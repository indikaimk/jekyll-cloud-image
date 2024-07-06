module Jekyll
  module CloudImage
    module Utils

      def convert_key_to_string(key, params_hash) 
        if params_hash.key? (key)
          return "#{key.to_s}=\"#{params_hash[key]}\""
        else
          return ""
        end
      end

      # def self.convert_to_hash(str)
      #   return unless str.is_a?(String)
    
      #   hash_arg = str.gsub(/[^'"\w\d]/, ' ').strip.split.map { |x| x.gsub(/['"]/, '') }
      #   Hash[*hash_arg]
      # end
    end
  end
end