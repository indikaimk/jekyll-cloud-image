require 'vips'

module Jekyll
  module CloudImage
  
    class Converter
      
      # def initialize(source, destination, type: webp)
      #   @source = source
      #   @destination = source
      #   @type = :webp
      # end
      
      # Convert png/jpg image to webp
      def self.convert(source)
        puts source
        if File.directory? source
          Dir.each_child(source) do |filename|
            puts filename
            if filename.end_with? ".png" or filename.end_with? ".jpeg"
              self.convert_file source + "/" + filename            
            end

          end     
        else
          self.convert_file source
        end

        

      end
      
      private
        def self.convert_file(filename)
          webp_filename = filename.chomp(File.extname filename) + '.webp'
          im = Vips::Image.new_from_file filename
          im.write_to_file webp_filename      
        
        end
    end
  end
end