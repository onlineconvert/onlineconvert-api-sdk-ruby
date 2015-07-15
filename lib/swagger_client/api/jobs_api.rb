require "uri"

module SwaggerClient
  class JobsApi
    basePath = "http://api2.online-convert.com/"
    # apiInvoker = APIInvoker

    # List of jobs active for the current user identified by the key.
    # It will return the list of jobs for the given user. In order to get the jobs a key or token must be provided:\n  - If the user key is provided all jobs for the current will be return.\n  - If one token is provided it will return the job assigned to that token if any.\n  \nThe request is paginated with an amount of 50 elements per page in any case.\n
    # @param [Hash] opts the optional parameters
    # @option opts [string] :status Filter the status of the job.
    # @option opts [string] :x_oc_token Token for authentication for the current job
    # @option opts [string] :x_oc_api_key Api key for the user to filter.
    # @option opts [number] :page Pagination for list of elements.
    # @return [array[Job]]
    def self.jobs_get(opts = {})
      

      # resource path
      path = "/jobs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if opts[:'status']
      query_params[:'page'] = opts[:'page'] if opts[:'page']

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
      response.map {|response| obj = Job.new() and obj.build_from_hash(response) }
    end

    # Creates a new Job with the user key.
    # 
    # @param x_oc_api_key Api key for the user to filter.
    # @param body Content of the job.
    # @param [Hash] opts the optional parameters
    # @return [Job]
    def self.jobs_post(x_oc_api_key, body, opts = {})
      
      # verify the required parameter 'x_oc_api_key' is set
      raise "Missing the required parameter 'x_oc_api_key' when calling jobs_post" if x_oc_api_key.nil?
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling jobs_post" if body.nil?
      

      # resource path
      path = "/jobs".sub('{format}','json')

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
      header_params[:'X-Oc-Api-Key'] = x_oc_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)
      

      auth_names = []
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Job.new() and obj.build_from_hash(response)
    end

    # Get information about a Job
    # 
    # @param job_id ID of job that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @option opts [string] :x_oc_token Token for authentication for the current job
    # @option opts [string] :x_oc_api_key Api key for the user to filter.
    # @return [Job]
    def self.jobs_job_id_get(job_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_get" if job_id.nil?
      

      # resource path
      path = "/jobs/{job_id}".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s)

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
      obj = Job.new() and obj.build_from_hash(response)
    end

    # Cancels a job created that haven&#39;t been started. (Allow to cancel jobs in process.)
    # 
    # @param job_id ID of job that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @option opts [string] :x_oc_token Token for authentication for the current job
    # @option opts [string] :x_oc_api_key Api key for the user to filter.
    # @return [Job]
    def self.jobs_job_id_delete(job_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_delete" if job_id.nil?
      

      # resource path
      path = "/jobs/{job_id}".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s)

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
      obj = Job.new() and obj.build_from_hash(response)
    end

    # Modifies the job identified by the id, allows to start a created job.
    # 
    # @param body Content of the job.
    # @param job_id ID of job that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @option opts [string] :x_oc_token Token for authentication for the current job
    # @option opts [string] :x_oc_api_key Api key for the user to filter.
    # @return [Job]
    def self.jobs_job_id_patch(body, job_id, opts = {})
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling jobs_job_id_patch" if body.nil?
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_patch" if job_id.nil?
      

      # resource path
      path = "/jobs/{job_id}".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s)

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
      post_body = Swagger::Request.object_to_http_body(body)
      

      auth_names = []
      response = Swagger::Request.new(:PATCH, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Job.new() and obj.build_from_hash(response)
    end

    # Get list of threads defined for the current job.
    # 
    # @param job_id ID of job that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @option opts [string] :x_oc_token Token for authentication for the current job
    # @option opts [string] :x_oc_api_key Api key for the user to filter.
    # @return [array[Thread]]
    def self.jobs_job_id_threads_get(job_id, opts = {})
      
      # verify the required parameter 'job_id' is set
      raise "Missing the required parameter 'job_id' when calling jobs_job_id_threads_get" if job_id.nil?
      

      # resource path
      path = "/jobs/{job_id}/threads".sub('{format}','json').sub('{' + 'job_id' + '}', job_id.to_s)

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
      response.map {|response| obj = Thread.new() and obj.build_from_hash(response) }
    end
  end
end
