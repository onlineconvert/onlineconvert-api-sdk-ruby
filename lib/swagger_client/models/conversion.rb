module SwaggerClient
  # 
  class Conversion < BaseObject
    attr_accessor :id, :target, :category, :options
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Identifier for the job conversion.
        :'id' => :'id',
        
        # Identifier for the job conversion type.
        :'target' => :'target',
        
        # Category for the conveted file.
        :'category' => :'category',
        
        # Type of conversion to perform with the file.
        :'options' => :'options'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'target' => :'string',
        :'category' => :'string',
        :'options' => :'object'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'target']
        @target = attributes[:'target']
      end
      
      if attributes[:'category']
        @category = attributes[:'category']
      end
      
      if attributes[:'options']
        @options = attributes[:'options']
      end
      
    end
  end
end
