require 'vips'

module JekyllCloudImage
  
  class Converter
    
    # def initialize(source, destination, type: webp)
    #   @source = source
    #   @destination = source
    #   @type = :webp
    # end
    
    # Convert png/jpg image to webp
    def self.convert(source)
      puts source
      im = Vips::Image.new_from_file source
      im.write_to_file '/Users/indika/Downloads/aws-s3-cli.webp'
      
      # Dir.each_child(@source) do |filename|
      #   puts filename
      # end
    end
  end
end