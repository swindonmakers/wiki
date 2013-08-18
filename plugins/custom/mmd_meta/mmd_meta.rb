# Title: MMD Meta
# Author: Jamie Osborne https://github.com/jmeosbn/mmd_meta
# Description: Support MultiMarkdown formatted metadata in Jekyll posts
#
# Usage:
# Use MultiMarkdown style metadata in place of YAML frontmatter:
# https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide
#
# Notes:
# Only supports Jekyll posts (as pages must start with `---`)
# Converts MultiMarkdown keys to lowercase, e.g. 'Author' -> 'author'
#
module Jekyll
  module Convertible

    # retain reference to original method
    alias_method :_mmdmeta_read_yaml, :read_yaml

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

          # convert MMD keys to match Jekyll
          yaml = $1.gsub(/^[\w-]+:/) {|s| s.downcase}

          # pass MMD metadata though (without tabs) as YAML
          self.data = YAML.load(yaml.gsub(/\t/, ' '))
        else
          # pass YAML through to original method if no match
          _mmdmeta_read_yaml(base, name)
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
end
