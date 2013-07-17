# Title: Post Images
# Author: Jamie Osborne https://github.com/jmeosbn/post_images
# Description: Copy images into the generated post folder
#
# Usage:
# Put source images into a folder within `_posts/_images`, named to match the post
#
# Syntax:
# Reference images in the generated folder from your post using `./`
#
module Jekyll

  class Post

    # retain reference to original method
    alias_method :_post_images_retained_write, :write

    #
    # Copy images from _posts/_images into the post folder
    #
    def write(dest)
      # call original method
      _post_images_retained_write(dest)

      image_path = self.site.config['source'] + '/_posts/_images/'
      postimages = image_path + self.name[0 .. -self.ext.length-1]

      if File.directory?(postimages)
        postdir = dest + self.url
        # puts "Copying images to " + postdir
        FileUtils.cp_r postimages + '/.', postdir
      end
    end

  end


  module Convertible

    # retain reference to original method
    alias_method :_post_images_retained_transform, :transform

    #
    # Replace URLs starting with './' to use post.url
    #
    def transform
      # call original method
      _post_images_retained_transform

      return if not self.ext.match('html|textile|markdown|md|haml|slim')

      # replace './' with path relative to site root
      self.content.gsub! /(\s+(href|src)\s*=\s*["|']{1}).\/([^\"'>]*)/ do
        $1 + self.url + $3
      end
    end

  end

end
