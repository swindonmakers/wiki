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
