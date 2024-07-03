module Jekyll
  module CloudImage
    Class ImageTag < Liquid::Tag

      def initialize(tag_name, text, tokens) 
        super
        @image_file = text
      end

      def render(context)
        "<img src=#{@image_file}>"
      end
    end
  end
end

Liquid::Template.register_tag("cloud_image", Jekyll::CloudImage::ImageTag)
