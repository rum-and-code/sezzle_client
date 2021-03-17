# SezzleClient::WebhooksApi

All URIs are relative to *//sandbox.gateway.sezzle.com/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_v2_webhooks**](WebhooksApi.md#delete_v2_webhooks) | **DELETE** /webhooks/{webhooks_uuid} | Delete webhooks
[**get_v2_webhooks**](WebhooksApi.md#get_v2_webhooks) | **GET** /webhooks | List webhooks
[**post_v2_webhooks**](WebhooksApi.md#post_v2_webhooks) | **POST** /webhooks | Create webhooks

# **delete_v2_webhooks**
> delete_v2_webhooks(webhooks_uuid)

Delete webhooks

### Example
```ruby
# load the gem
require 'sezzle_client'
# setup authorization
SezzleClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SezzleClient::WebhooksApi.new
webhooks_uuid = 'webhooks_uuid_example' # String | Webhooks UUID


begin
  #Delete webhooks
  api_instance.delete_v2_webhooks(webhooks_uuid)
rescue SezzleClient::ApiError => e
  puts "Exception when calling WebhooksApi->delete_v2_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhooks_uuid** | **String**| Webhooks UUID |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_v2_webhooks**
> Array&lt;null&gt; get_v2_webhooks

List webhooks

### Example
```ruby
# load the gem
require 'sezzle_client'
# setup authorization
SezzleClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SezzleClient::WebhooksApi.new

begin
  #List webhooks
  result = api_instance.get_v2_webhooks
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling WebhooksApi->get_v2_webhooks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;null&gt;**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_v2_webhooks**
> InlineResponse2008 post_v2_webhooks(body)

Create webhooks

### Example
```ruby
# load the gem
require 'sezzle_client'
# setup authorization
SezzleClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SezzleClient::WebhooksApi.new
body = SezzleClient::Webhook.new # Webhook | Webhooks request


begin
  #Create webhooks
  result = api_instance.post_v2_webhooks(body)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling WebhooksApi->post_v2_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Webhook**](Webhook.md)| Webhooks request |

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



