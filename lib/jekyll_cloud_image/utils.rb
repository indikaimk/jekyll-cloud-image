module Jekyll
  module CloudImage
    module Utils

      def convert_key_to_string(key, params_hash) 
        if params_hash.key? (key)
          value = params_hash[key]
          # Add the leading quotation mark
          unless value.start_with? ('"')
            value = "\"#{value}"
          end
          # Add the trailing quotation mark
          unless value.end_with? ('"')
            value = "#{value}\""
          end
          return "#{key.to_s}=#{value}"
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