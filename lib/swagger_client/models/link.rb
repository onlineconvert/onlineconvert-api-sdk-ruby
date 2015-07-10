module SwaggerClient
  # 
  class Link < BaseObject
    attr_accessor :id, :uri
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'uri' => :'uri'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'uri' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'uri']
        @uri = attributes[:'uri']
      end
      
    end
  end
end
