# Swagger common files
require 'swagger_client/monkey'
require 'swagger_client/swagger'
require 'swagger_client/swagger/configuration'
require 'swagger_client/swagger/request'
require 'swagger_client/swagger/response'
require 'swagger_client/swagger/version'

# Models
require 'swagger_client/models/base_object'
require 'swagger_client/models/job'
require 'swagger_client/models/input_file'
require 'swagger_client/models/output_file'
require 'swagger_client/models/conversion'
require 'swagger_client/models/thread'
require 'swagger_client/models/status'
require 'swagger_client/models/error'

# APIs
require 'swagger_client/api/information_api'
require 'swagger_client/api/input_api'
require 'swagger_client/api/jobs_api'
require 'swagger_client/api/output_api'
require 'swagger_client/api/conversion_api'

module SwaggerClient
  # Initialize the default configuration
  Swagger.configuration ||= Swagger::Configuration.new
end
