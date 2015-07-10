require "uri"

module SwaggerClient
  class InformationApi
    basePath = "http://api2.online-convert.com"
    # apiInvoker = APIInvoker

    # Get a list of the valid conversions.
    # Gets a list of the valid conversions that can be made with the API. For each conversion is also shown the available options for that specific type of conversion.\n\nThis conversions can be added to a Job through the specific endpoint or in the information given to create the new Job.\n
    # @param [Hash] opts the optional parameters
    # @option opts [string] :category Category for the conversion.
    # @option opts [string] :target Target for for the conversion.
    # @option opts [number] :page Pagination for list of elements.
    # @return [array[Conversion]]
    def self.conversions_get(opts = {})
      

      # resource path
      path = "/conversions".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'category'] = opts[:'category'] if opts[:'category']
      query_params[:'target'] = opts[:'target'] if opts[:'target']
      query_params[:'page'] = opts[:'page'] if opts[:'page']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = Conversion.new() and obj.build_from_hash(response) }
    end

    # Get a list of the valid statuses.
    # The endpoint provide a list of all available status that the Job may have during the process as a description of the status.
    # @param [Hash] opts the optional parameters
    # @return [array[Status]]
    def self.statuses_get(opts = {})
      

      # resource path
      path = "/statuses".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = Status.new() and obj.build_from_hash(response) }
    end
  end
end
