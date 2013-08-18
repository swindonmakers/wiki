# Title: Permalink (Dated)
# Author: Jamie Osborne https://github.com/jmeosbn/permalink_dated
# Description: Use an alternative permalink format for duplicate titles
#
# Usage:
# Set `dated_url: true` in a post
#
module Jekyll

  class Post

    # retain reference to original method
    alias_method :_permalink_dated_retained_template, :template

    def template
      if self.data['dated_url'] == true
        # use permalink_dated if defined in _config.yml
        site.config['permalink_dated'] || "/blog/:year-:month-:day-:title/"
      else
        # call original method
        _permalink_dated_retained_template
      end
    end

  end

end
