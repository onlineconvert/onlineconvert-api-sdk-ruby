module SwaggerClient
  # 
  class Error < BaseObject
    attr_accessor :code, :message, :errors
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'code' => :'code',
        
        # 
        :'message' => :'message',
        
        # 
        :'errors' => :'errors'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'code' => :'int',
        :'message' => :'string',
        :'errors' => :'object'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'code']
        @code = attributes[:'code']
      end
      
      if attributes[:'message']
        @message = attributes[:'message']
      end
      
      if attributes[:'errors']
        @errors = attributes[:'errors']
      end
      
    end
  end
end
