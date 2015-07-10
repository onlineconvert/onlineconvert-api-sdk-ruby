require "uri"

module SwaggerClient
  class ConversionApi
    basePath = "http://api2.online-convert.com"
    # apiInvoker = APIInvoker

    # Get list of conversions defined for the current job.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @option opts [string] :token Token for authentication.
    # @option opts [string] :key Api key for the user to filter.
    # @return [array[Conversion]]
    def self.jobs_job_id_conversions_get(job_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_conversions_get" if job_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/conversions".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s)

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
      header_params[:'token'] = opts[:'token'] if opts[:'token']
      header_params[:'key'] = opts[:'key'] if opts[:'key']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = Conversion.new() and obj.build_from_hash(response) }
    end

    # Adds a new conversion to the given job.
    # 
    # @param body information for the conversion.
    # @param job_id ID of job that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @option opts [string] :token Token for authentication.
    # @option opts [string] :key Api key for the user to filter.
    # @return [Conversion]
    def self.jobs_job_id_conversions_post(body, job_id, opts = {})
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling jobs_job_id_conversions_post" if body.nil?
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_conversions_post" if job_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/conversions".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s)

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
      header_params[:'token'] = opts[:'token'] if opts[:'token']
      header_params[:'key'] = opts[:'key'] if opts[:'key']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)
      

      auth_names = []
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Conversion.new() and obj.build_from_hash(response)
    end

    # Get list of conversions defined for the current job.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param conversion_id Identifier for the job conversion.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :token Token for authentication.
    # @option opts [string] :key Api key for the user to filter.
    # @return [Conversion]
    def self.jobs_job_id_conversions_conversion_id_get(job_id, conversion_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_conversions_conversion_id_get" if job_id.nil?
      
      # verify the required parameter 'conversion_id' is set
      raise "Missing the required parameter 'conversion_id' when calling jobs_job_id_conversions_conversion_id_get" if conversion_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/conversions/{conversion_id}".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s).sub('{' + 'conversion_id' + '}', conversion_id.to_s)

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
      header_params[:'token'] = opts[:'token'] if opts[:'token']
      header_params[:'key'] = opts[:'key'] if opts[:'key']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Conversion.new() and obj.build_from_hash(response)
    end

    # Removes the conversion for a job.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param conversion_id Identifier for the job conversion.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :token Token for authentication.
    # @option opts [string] :key Api key for the user to filter.
    # @return [Conversion]
    def self.jobs_job_id_conversions_conversion_id_delete(job_id, conversion_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_conversions_conversion_id_delete" if job_id.nil?
      
      # verify the required parameter 'conversion_id' is set
      raise "Missing the required parameter 'conversion_id' when calling jobs_job_id_conversions_conversion_id_delete" if conversion_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/conversions/{conversion_id}".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s).sub('{' + 'conversion_id' + '}', conversion_id.to_s)

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
      header_params[:'token'] = opts[:'token'] if opts[:'token']
      header_params[:'key'] = opts[:'key'] if opts[:'key']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:DELETE, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Conversion.new() and obj.build_from_hash(response)
    end
  end
end
