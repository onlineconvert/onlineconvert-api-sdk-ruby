module SwaggerClient
  # 
  class Job < BaseObject
    attr_accessor :id, :token, :type, :status, :process, :conversion, :input, :callback, :server, :created_at, :modified_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique identifier for the job.
        :'id' => :'id',
        
        # Token to identify client allowed to run the job.
        :'token' => :'token',
        
        # Type of the job created.
        :'type' => :'type',
        
        # Current status for the job
        :'status' => :'status',
        
        # Determine if the job must be processed as soon as it is ready.
        :'process' => :'process',
        
        # Type of conversion or conversions to be carried out.
        :'conversion' => :'conversion',
        
        # Source or sources of the files to be converted.
        :'input' => :'input',
        
        # Callback url to the the status updates
        :'callback' => :'callback',
        
        # Server assigned for file uploads and downloads
        :'server' => :'server',
        
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
        :'token' => :'string',
        :'type' => :'string',
        :'status' => :'Status',
        :'process' => :'boolean',
        :'conversion' => :'array[Conversion]',
        :'input' => :'array[InputFile]',
        :'callback' => :'string',
        :'server' => :'string',
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
      
      if attributes[:'token']
        @token = attributes[:'token']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
      if attributes[:'status']
        @status = attributes[:'status']
      end
      
      if attributes[:'process']
        @process = attributes[:'process']
      end
      
      if attributes[:'conversion']
        if (value = attributes[:'conversion']).is_a?(Array)
          @conversion = value
        end
      end
      
      if attributes[:'input']
        if (value = attributes[:'input']).is_a?(Array)
          @input = value
        end
      end
      
      if attributes[:'callback']
        @callback = attributes[:'callback']
      end
      
      if attributes[:'server']
        @server = attributes[:'server']
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
