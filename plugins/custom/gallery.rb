# Title: Galleria Tag for Jekyll
# Authors: Alex Bevilacqua
# Description: incorporate the Galleria gallery jquery plugin
#
# Adaption of "Photos tag for Jekyll" by Devin Weaver, and the derived
# "Gallery Tag for Jekyll" by Kevin Brown.
#
# Installation:
#
# {% galleria_includes %}
#
# This macro should be added to your `source/_includes/custom/head.html`
# in order to load the libraries needed by Galleria
#
# Example:
#
# {% galleria %}
# {
#    image: '1.jpg',
#    title: 'First Image',
#    description: 'The first example image',
#    thumb: '1t.jpg',
#    big: '1b.jpg',
#    link: 'https://google.com',
# },
# {
#    image: '2.jpg',
#    title: 'Second Image',
#    description: 'The second example image',
#    thumb: '2t.jpg',
#    big: '2b.jpg',
#    link: 'https://flickr.com',
# },
# {% endgalleria %}
#
module Jekyll

  PLUGIN_GALLERIA_VERSION = "1.4.2"
  PLUGIN_JQUERY_VERSION   = "2.1.1"

  class PhotosUtil
    def initialize(context)
      @context = context
    end

    def path_for(filename)
      filename = filename.strip
      prefix = (@context.environments.first['site']['photos_prefix'] unless filename =~ /^(?:\/|http)/i) || ""
      "#{prefix}#{filename}"
    end
  end

  class GalleriaScriptIncludePatch < Liquid::Tag
    def render(context)
      return <<-eof
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/#{PLUGIN_JQUERY_VERSION}/jquery.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/galleria/#{PLUGIN_GALLERIA_VERSION}/galleria.min.js" type="text/javascript"></script>

<!--
<script src="//cdnjs.cloudflare.com/ajax/libs/galleria/#{PLUGIN_GALLERIA_VERSION}/themes/classic/galleria.classic.min.js" type="text/javascript"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/galleria/#{PLUGIN_GALLERIA_VERSION}/themes/classic/galleria.classic.min.css" media="screen, projection" rel="stylesheet" type="text/css" />
<style>
-->

<script src="/assets/galleria/classic/galleria.classic.js" type="text/javascript"></script>
<link href="/assets/galleria/classic/galleria.classic.css" media="screen, projection" rel="stylesheet" type="text/css" />
<style>

  /* This rule is read by Galleria to define the gallery height: */
  #galleria{height:400px}
</style>
      eof
    end
  end

  class GalleriaTag < Liquid::Block
    def initialize(tag_name, markup, tokens)
      # No initializing needed
      super
    end

    def render(context)
      p = PhotosUtil.new(context)
      gallery = "<div class=\"galleria\"></div>"
      gallery << "<script>"

      # FIXME: pass from Jekyll YAML or similar to JSON data array
      gallery << "var data = ["
      gallery << super
      gallery << "];"

      gallery << "Galleria.configure({"
      gallery << "    imageCrop: false,"
      gallery << "    transition: 'none',"
      # gallery << "    height: 0.5625,"
      gallery << "    showInfo: true,"
      # gallery << "    carousel: true,"
      gallery << "    autoplay: 3000,"
      gallery << "});"

      # gallery << "Galleria.loadTheme('galleria/themes/classic/galleria.classic.min.js');"

      gallery << "Galleria.run('.galleria', {"
      gallery << "    dataSource: data,"
      gallery << "});"
      gallery << "</script>"
    end
  end

end

Liquid::Template.register_tag('galleria', Jekyll::GalleriaTag)
Liquid::Template.register_tag('galleria_includes', Jekyll::GalleriaScriptIncludePatch)