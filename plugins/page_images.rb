module Jekyll

  class PageImages < PostFilter
    def post_render(post)
      if post.ext.match('html|textile|markdown|md|haml|slim|xml')

        if post.data["layout"] == 'post'

          # todo: check if file is updated/being published
          # puts post.published

          filename = Pathname.new(post.name)
          image_path = Pathname.new(post.site.config['source'] + '/_posts/_images/' +
                                                      filename.basename(post.ext).to_s)

          if File.directory?(image_path)
            postdir = post.site.config['destination'] + post.url
            puts "Copying images to " + postdir
            FileUtils.cp_r image_path.to_s + '/.', postdir

            Dir.chdir(postdir) do
              Dir.glob('*') { |filename|
                # puts '- ' + filename
                # Keep the image files from being cleaned by Jekyll
                post.site.static_files << Jekyll::SitemapFile.new(post.site, post.site.config['destination'],
                post.url, filename)
              }
            end

          end

        end

      end
    end
  end

end
