# Monkeypatch for Jekyll
# Copy images into the generated post folder
# Put source images into a folder within '_posts/_images', named to match the post
# Reference the generated folder from your post using '{{ page.url }}'
module Jekyll

  class Post

    # retain reference to original method
    alias_method :_post_images_retained_write, :write

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

end
