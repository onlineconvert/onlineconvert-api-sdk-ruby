module SwaggerClient
  # 
  class OutputFile < BaseObject
    attr_accessor :id, :source, :uri, :filename, :size, :created_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique identifier for the file.
        :'id' => :'id',
        
        # Sources for the files including the input files and conversion used.
        :'source' => :'source',
        
        # Url for downloading the file.
        :'uri' => :'uri',
        
        # Filename of the file.
        :'filename' => :'filename',
        
        # Size of the file in bytes.
        :'size' => :'size',
        
        # Date and time when the job was created.
        :'created_at' => :'created_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'source' => :'object',
        :'uri' => :'string',
        :'filename' => :'string',
        :'size' => :'int',
        :'created_at' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'uri']
        @uri = attributes[:'uri']
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
      
    end
  end
end
