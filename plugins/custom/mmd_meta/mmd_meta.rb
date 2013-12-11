# Title: MMD Meta
# Author: Jamie Osborne https://github.com/jmeosbn/mmd_meta
# Description: Support MultiMarkdown formatted metadata in Jekyll posts
#
# Usage:
# Use MultiMarkdown style metadata in place of YAML frontmatter:
# https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide
#
# Notes:
# Automatically sets default layout style.
# Only supports posts (Jekyll pages must start with `---`).
# Converts MultiMarkdown keys to lowercase and strips spaces.
# Converts MultiMarkdown page variables into liquid tags.
#


#
# Note: only calls super if no MultiMarkdown metadata found
#
module MMD_Meta
  #
  # Read the MultiMarkdown metadata
  #
  def read_yaml(base, name)

    begin
      self.content = File.read(File.join(base, name))

      # check file uses markdown
      md = name.match(/\.(markdown|md|mmd)$/) != nil

      # check for match on MMD metadata
      if md and self.content =~ /\A([\w-]+:\s*.*?\n)^($\n?)/m
        self.content = $POSTMATCH

        # Metadata keys must start with a letter or number, following
        #   can be letters, numbers, spaces, hyphens, or underscore.
        # Metadata keys are case insensitive and stripped of all spaces
        #   during processing.
        mmd_meta_var = '[[:alnum:]][\w\- ]+'

        # convert MMD keys to match Jekyll
        yaml = $1.gsub(/^#{mmd_meta_var}:/) {
          # convert keys to lowercase and strip spaces, append space after colon
          |s| "#{s.downcase.delete ' '} "
        }

        # convert MMD variables into liquid tags for page
        self.content.gsub!(/\[%(#{mmd_meta_var})\]/) {
          # convert keys to lowercase and strip spaces
          |s| "{{ page.#{$1.downcase.delete ' '} }}"
        }

        # pass MMD metadata though (without tabs) as YAML
        self.data = YAML.load(yaml.gsub(/\t/, ' '))
      else
        # pass YAML through to original method if no match
        super
        return
      end

    rescue SyntaxError => e
      puts "YAML Exception reading #{File.join(base, name)}: #{e.message}"
    rescue Exception => e
      puts "Error reading file #{File.join(base, name)}: #{e.message}"
    end

    self.data ||= {}
  end

end
Jekyll::Post.send(:include, MMD_Meta)


# Title: ImplicitLayout
# Description: Set default layout for posts and pages
#
module ImplicitLayoutForPost
  def read_yaml(*args)
    super
    self.data['layout'] ||= 'post'

    # some metadata not normally accessible
    self.data['name'] = self.name
  end
end
Jekyll::Post.send(:include, ImplicitLayoutForPost)

module ImplicitLayoutForPage
  def read_yaml(*args)
    super
    self.data['layout'] ||= 'page'
  end
end
Jekyll::Page.send(:include, ImplicitLayoutForPage)
