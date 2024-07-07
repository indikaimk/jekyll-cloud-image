require_relative 'utils'

module Jekyll
  module CloudImage
    class ImageTag < Liquid::Tag
      include Utils

      def initialize(tag_name, text, tokens) 
        super
        params = text.split(',')
        @image_file = params[0]
        @params_hash =  Hash.new
        if params.length > 1
          params.each do |param|
            if param.include? ':'
              key, value = get_key_and_value(param)
              @params_hash[key.to_sym] = value
            end
          end
        end
      end

      def render(context)
        @settings = context.registers[:site].config["image_url_prefix"]
        alter_text = convert_key_to_string(:alt, @params_hash)
        width = convert_key_to_string(:width, @params_hash)
        height = convert_key_to_string(:height, @params_hash)
        # "<img src=#{@image_file}>"
        return "<img src=\"#{@image_file}\" #{alter_text} #{width} #{height}>"
      end

      def get_key_and_value(param)
        key, value = param.split(':')
        key.strip!
        value.strip!
        return key, value
      end


    end
  end
end

Liquid::Template.register_tag("cloud_image", Jekyll::CloudImage::ImageTag)
