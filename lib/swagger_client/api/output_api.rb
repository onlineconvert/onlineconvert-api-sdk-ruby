require "uri"

module SwaggerClient
  class OutputApi
    basePath = "http://api2.online-convert.com/"
    # apiInvoker = APIInvoker

    # Get list of converted.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @option opts [string] :conversion_id 
    # @option opts [string] :input_id 
    # @option opts [string] :x_oc_token Token for authentication for the current job
    # @option opts [string] :x_oc_api_key Api key for the user to filter.
    # @return [array[OutputFile]]
    def self.jobs_job_id_output_get(job_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_output_get" if job_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/output".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conversion_id'] = opts[:'conversion_id'] if opts[:'conversion_id']
      query_params[:'input_id'] = opts[:'input_id'] if opts[:'input_id']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)
      header_params[:'X-Oc-Token'] = opts[:'x_oc_token'] if opts[:'x_oc_token']
      header_params[:'X-Oc-Api-Key'] = opts[:'x_oc_api_key'] if opts[:'x_oc_api_key']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = OutputFile.new() and obj.build_from_hash(response) }
    end

    # Get information about an output file source.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param file_id Id of the file to download
    # @param [Hash] opts the optional parameters
    # @option opts [string] :x_oc_token Token for authentication for the current job
    # @option opts [string] :x_oc_api_key Api key for the user to filter.
    # @return [array[OutputFile]]
    def self.jobs_job_id_output_file_id_get(job_id, file_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_output_file_id_get" if job_id.nil?
      
      # verify the required parameter 'file_id' is set
      raise "Missing the required parameter 'file_id' when calling jobs_job_id_output_file_id_get" if file_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/output/{file_id}".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s).sub('{' + 'file_id' + '}', file_id.to_s)

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
      header_params[:'X-Oc-Token'] = opts[:'x_oc_token'] if opts[:'x_oc_token']
      header_params[:'X-Oc-Api-Key'] = opts[:'x_oc_api_key'] if opts[:'x_oc_api_key']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = OutputFile.new() and obj.build_from_hash(response) }
    end

    # Deletes a file from the output.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param file_id Id of the file to download
    # @param [Hash] opts the optional parameters
    # @option opts [string] :x_oc_token Token for authentication for the current job
    # @option opts [string] :x_oc_api_key Api key for the user to filter.
    # @return [array[OutputFile]]
    def self.jobs_job_id_output_file_id_delete(job_id, file_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_output_file_id_delete" if job_id.nil?
      
      # verify the required parameter 'file_id' is set
      raise "Missing the required parameter 'file_id' when calling jobs_job_id_output_file_id_delete" if file_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/output/{file_id}".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s).sub('{' + 'file_id' + '}', file_id.to_s)

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
      header_params[:'X-Oc-Token'] = opts[:'x_oc_token'] if opts[:'x_oc_token']
      header_params[:'X-Oc-Api-Key'] = opts[:'x_oc_api_key'] if opts[:'x_oc_api_key']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:DELETE, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = OutputFile.new() and obj.build_from_hash(response) }
    end
  end
end
