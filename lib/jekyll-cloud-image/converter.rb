module JekyllCloudImage
  
  class Converter
    
    def initialize(source, destination, type: webp)
      @source = source
      @destination = source
      @type = :webp
    end
    
    # Convert png/jpg image to webp
    def convert
      Dir.each_child(@source) do |filename|
        puts filename
      end
    end
  end
end