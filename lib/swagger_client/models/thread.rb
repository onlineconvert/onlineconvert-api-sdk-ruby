module SwaggerClient
  # 
  class Thread < BaseObject
    attr_accessor :hash, :status, :info, :created_at, :modified_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique identifier of the thread.
        :'hash' => :'hash',
        
        # Status of the thread.
        :'status' => :'status',
        
        # Extra information.
        :'info' => :'info',
        
        # Date and time when the job was created.
        :'created_at' => :'created_at',
        
        # Date and time when the job was last modified.
        :'modified_at' => :'modified_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'hash' => :'string',
        :'status' => :'int',
        :'info' => :'string',
        :'created_at' => :'DateTime',
        :'modified_at' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'hash']
        @hash = attributes[:'hash']
      end
      
      if attributes[:'status']
        @status = attributes[:'status']
      end
      
      if attributes[:'info']
        @info = attributes[:'info']
      end
      
      if attributes[:'created_at']
        @created_at = attributes[:'created_at']
      end
      
      if attributes[:'modified_at']
        @modified_at = attributes[:'modified_at']
      end
      
    end
  end
end
