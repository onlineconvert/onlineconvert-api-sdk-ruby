module SwaggerClient
  # 
  class Status < BaseObject
    attr_accessor :code, :info
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Status code identifier.
        :'code' => :'code',
        
        # Description of the status code.
        :'info' => :'info'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'code' => :'string',
        :'info' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'code']
        @code = attributes[:'code']
      end
      
      if attributes[:'info']
        @info = attributes[:'info']
      end
      
    end
  end
end
