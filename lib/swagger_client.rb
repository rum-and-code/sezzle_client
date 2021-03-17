=begin
#Sezzle API

#The Sezzle API is intended for merchants interested in accepting Sezzle Pay as a payment option.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/address'
require 'swagger_client/models/all_of_session_customer'
require 'swagger_client/models/all_of_session_order'
require 'swagger_client/models/authorization'
require 'swagger_client/models/body'
require 'swagger_client/models/body_1'
require 'swagger_client/models/body_2'
require 'swagger_client/models/body_3'
require 'swagger_client/models/body_4'
require 'swagger_client/models/capture'
require 'swagger_client/models/customer'
require 'swagger_client/models/discount'
require 'swagger_client/models/error'
require 'swagger_client/models/error_inner'
require 'swagger_client/models/inline_response_200'
require 'swagger_client/models/inline_response_200_1'
require 'swagger_client/models/inline_response_200_2'
require 'swagger_client/models/inline_response_200_3'
require 'swagger_client/models/inline_response_200_4'
require 'swagger_client/models/inline_response_200_5'
require 'swagger_client/models/inline_response_200_6'
require 'swagger_client/models/inline_response_200_7'
require 'swagger_client/models/inline_response_200_8'
require 'swagger_client/models/inline_response_200_9'
require 'swagger_client/models/inline_response_200_order'
require 'swagger_client/models/inline_response_201'
require 'swagger_client/models/inline_response_201_1'
require 'swagger_client/models/inline_response_201_1_order'
require 'swagger_client/models/inline_response_201_1_tokenize'
require 'swagger_client/models/installment_plan'
require 'swagger_client/models/intent'
require 'swagger_client/models/line_item'
require 'swagger_client/models/link'
require 'swagger_client/models/notification'
require 'swagger_client/models/order'
require 'swagger_client/models/order_authorization'
require 'swagger_client/models/payout'
require 'swagger_client/models/payout_inner'
require 'swagger_client/models/price'
require 'swagger_client/models/refund'
require 'swagger_client/models/session'
require 'swagger_client/models/session_cancel_url'
require 'swagger_client/models/session_status'
require 'swagger_client/models/token'
require 'swagger_client/models/webhook'

# APIs
require 'swagger_client/api/bearer_authentication_api'
require 'swagger_client/api/customer_api'
require 'swagger_client/api/order_api'
require 'swagger_client/api/reports_api'
require 'swagger_client/api/session_api'
require 'swagger_client/api/token_api'
require 'swagger_client/api/webhooks_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
