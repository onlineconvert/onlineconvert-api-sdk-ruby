require "uri"

module SwaggerClient
  class InputApi
    basePath = "http://api2.online-convert.com"
    # apiInvoker = APIInvoker

    # Get list of binary source files for the conversion.hhh
    # Description of the get for the inputs of a specific job.
    # @param job_id ID of job that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @option opts [string] :token Token for authentication.
    # @option opts [string] :key Api key for the user to filter.
    # @return [array[InputFile]]
    def self.jobs_job_id_input_get(job_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_input_get" if job_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/input".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s)

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
      response.map {|response| obj = InputFile.new() and obj.build_from_hash(response) }
    end

    # Cretes a new input for the current job.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @option opts [InputFile] :body 
    # @option opts [string] :token Token for authentication.
    # @option opts [string] :key Api key for the user to filter.
    # @return [InputFile]
    def self.jobs_job_id_input_post(job_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_input_post" if job_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/input".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s)

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
      post_body = Swagger::Request.object_to_http_body(opts[:'body'])
      

      auth_names = []
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = InputFile.new() and obj.build_from_hash(response)
    end

    # Get list of conversions defined for the current job.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param file_id Id of the file to download
    # @param [Hash] opts the optional parameters
    # @option opts [string] :token Token for authentication.
    # @option opts [string] :key Api key for the user to filter.
    # @return [InputFile]
    def self.jobs_job_id_input_file_id_get(job_id, file_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_input_file_id_get" if job_id.nil?
      
      # verify the required parameter 'file_id' is set
      raise "Missing the required parameter 'file_id' when calling jobs_job_id_input_file_id_get" if file_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/input/{file_id}".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s).sub('{' + 'file_id' + '}', file_id.to_s)

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
      obj = InputFile.new() and obj.build_from_hash(response)
    end

    # Removes the input for a job.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param file_id Id of the file to download
    # @param [Hash] opts the optional parameters
    # @option opts [string] :token Token for authentication.
    # @option opts [string] :key Api key for the user to filter.
    # @return [InputFile]
    def self.jobs_job_id_input_file_id_delete(job_id, file_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_input_file_id_delete" if job_id.nil?
      
      # verify the required parameter 'file_id' is set
      raise "Missing the required parameter 'file_id' when calling jobs_job_id_input_file_id_delete" if file_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/input/{file_id}".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s).sub('{' + 'file_id' + '}', file_id.to_s)

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
      obj = InputFile.new() and obj.build_from_hash(response)
    end
  end
end
