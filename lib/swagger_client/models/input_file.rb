module SwaggerClient
  # 
  class InputFile < BaseObject
    attr_accessor :id, :type, :source, :filename, :size, :created_at, :modified_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique identifier for the file.
        :'id' => :'id',
        
        # How the file has been generated.
        :'type' => :'type',
        
        # The source of the file to be used that can be either, an external url. An identifier for an uploaded file to the server or an identifier for another job.
        :'source' => :'source',
        
        # Filename of the file.
        :'filename' => :'filename',
        
        # Size of the file in bytes.
        :'size' => :'size',
        
        # Date and time when the job was created.
        :'created_at' => :'created_at',
        
        # Date and time when the job was last modified.
        :'modified_at' => :'modified_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'type' => :'string',
        :'source' => :'string',
        :'filename' => :'string',
        :'size' => :'int',
        :'created_at' => :'DateTime',
        :'modified_at' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'filename']
        @filename = attributes[:'filename']
      end
      
      if attributes[:'size']
        @size = attributes[:'size']
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
