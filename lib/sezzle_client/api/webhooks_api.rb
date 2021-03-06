=begin
#Sezzle API

#The Sezzle API is intended for merchants interested in accepting Sezzle Pay as a payment option.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module SezzleClient
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete webhooks
    # @param webhooks_uuid Webhooks UUID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_v2_webhooks(webhooks_uuid, opts = {})
      delete_v2_webhooks_with_http_info(webhooks_uuid, opts)
      nil
    end

    # Delete webhooks
    # @param webhooks_uuid Webhooks UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_v2_webhooks_with_http_info(webhooks_uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_v2_webhooks ...'
      end
      # verify the required parameter 'webhooks_uuid' is set
      if @api_client.config.client_side_validation && webhooks_uuid.nil?
        fail ArgumentError, "Missing the required parameter 'webhooks_uuid' when calling WebhooksApi.delete_v2_webhooks"
      end
      # resource path
      local_var_path = '/webhooks/{webhooks_uuid}'.sub('{' + 'webhooks_uuid' + '}', webhooks_uuid.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type]

      auth_names = opts[:auth_names] || ['Bearer']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete_v2_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List webhooks
    # @param [Hash] opts the optional parameters
    # @return [Array<null>]
    def get_v2_webhooks(opts = {})
      data, _status_code, _headers = get_v2_webhooks_with_http_info(opts)
      data
    end

    # List webhooks
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<null>, Integer, Hash)>] Array<null> data, response status code and response headers
    def get_v2_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_v2_webhooks ...'
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'Array<null>'

      auth_names = opts[:auth_names] || ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_v2_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create webhooks
    # @param body Webhooks request
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2008]
    def post_v2_webhooks(body, opts = {})
      data, _status_code, _headers = post_v2_webhooks_with_http_info(body, opts)
      data
    end

    # Create webhooks
    # @param body Webhooks request
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2008, Integer, Hash)>] InlineResponse2008 data, response status code and response headers
    def post_v2_webhooks_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.post_v2_webhooks ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling WebhooksApi.post_v2_webhooks"
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body)

      return_type = opts[:return_type] || 'InlineResponse2008'

      auth_names = opts[:auth_names] || ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#post_v2_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
