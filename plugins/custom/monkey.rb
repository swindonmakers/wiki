#
# Don't output line numbers in code blocks
#
module HighlightCode
  def tableize_code (str, lang = '')
    div = '<div class="highlight">'
    code = ''
    str.lines.each_with_index do |line,index|
      code  += "<span class='line'>#{line}</span>"
    end
    div += "<pre><code class='#{lang}'>#{code}</code></pre></div>"
  end
end


#
# "Fix" non-working post_url tag (date never matches)
#
module Jekyll
  class PostUrl < Liquid::Tag
    def render(context)
      site = context.registers[:site]

      site.posts.each do |p|
        # monkey: only compare the slug name
        if p.slug == @post.slug
          return p.url
        end
      end

      puts "ERROR: post_url: \"#{@orig_post}\" could not be found"

      return "#"
    end
  end
end
