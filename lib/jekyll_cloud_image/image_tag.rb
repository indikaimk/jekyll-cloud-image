module Jekyll
  module CloudImage
    class ImageTag < Liquid::Tag

      def initialize(tag_name, text, tokens) 
        super
        @image_file = text
        @tokens = tokens
      end

      def render(context)
        @settings = context.registers[:site].config["image_url_prefix"]
        # "<img src=#{@image_file}>"
        # return "<img src=\"#{@image_file}\" alt=\"Girl in a jacket\" width=\"500\" height=\"600\">"
        return @tokens
      end
    end
  end
end

Liquid::Template.register_tag("cloud_image", Jekyll::CloudImage::ImageTag)
