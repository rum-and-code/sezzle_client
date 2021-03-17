# SezzleClient::OrderApi

All URIs are relative to *//sandbox.gateway.sezzle.com/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v2_order**](OrderApi.md#get_v2_order) | **GET** /order/{order_uuid} | Get order details
[**patch_v2_checkout**](OrderApi.md#patch_v2_checkout) | **PATCH** /order/{order_uuid} | Update order
[**post_v2_capture_by_order**](OrderApi.md#post_v2_capture_by_order) | **POST** /order/{order_uuid}/capture | Capture amount by order
[**post_v2_reauthorize_by_order**](OrderApi.md#post_v2_reauthorize_by_order) | **POST** /order/{order_uuid}/reauthorize | Reauthorize amount by order
[**post_v2_refund_by_order**](OrderApi.md#post_v2_refund_by_order) | **POST** /order/{order_uuid}/refund | Refund amount by order
[**post_v2_release_by_order**](OrderApi.md#post_v2_release_by_order) | **POST** /order/{order_uuid}/release | Release amount by order
[**post_v2_upcharge_by_order**](OrderApi.md#post_v2_upcharge_by_order) | **POST** /order/{order_uuid}/upcharge | Upcharge amount by order

# **get_v2_order**
> InlineResponse2001 get_v2_order(order_uuid)

Get order details

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

api_instance = SezzleClient::OrderApi.new
order_uuid = 'order_uuid_example' # String | Order UUID


begin
  #Get order details
  result = api_instance.get_v2_order(order_uuid)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling OrderApi->get_v2_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_uuid** | **String**| Order UUID |

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_v2_checkout**
> patch_v2_checkout(bodyorder_uuid)

Update order

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

api_instance = SezzleClient::OrderApi.new
body = SezzleClient::Body1.new # Body1 | Session request
order_uuid = 'order_uuid_example' # String | Order UUID


begin
  #Update order
  api_instance.patch_v2_checkout(bodyorder_uuid)
rescue SezzleClient::ApiError => e
  puts "Exception when calling OrderApi->patch_v2_checkout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body1**](Body1.md)| Session request |
 **order_uuid** | **String**| Order UUID |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_v2_capture_by_order**
> InlineResponse2006 post_v2_capture_by_order(order_uuid, opts)

Capture amount by order

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

api_instance = SezzleClient::OrderApi.new
order_uuid = 'order_uuid_example' # String | Order UUID
opts = {
  body: SezzleClient::Body3.new # Body3 | Capture request
}

begin
  #Capture amount by order
  result = api_instance.post_v2_capture_by_order(order_uuid, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling OrderApi->post_v2_capture_by_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_uuid** | **String**| Order UUID |
 **body** | [**Body3**](Body3.md)| Capture request | [optional]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_v2_reauthorize_by_order**
> InlineResponse2007 post_v2_reauthorize_by_order(order_uuid, opts)

Reauthorize amount by order

### DEVELOPER PREVIEW   *This API is subject to change and limited to select merchants. Bug fixes and new features will be released based on feedback throughout the preview period.*   - Requires customer object on Create Session with at minimum `{ tokenize: true }` - Response will be a new order and its `uuid` can be used on the Order API endpoints

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

api_instance = SezzleClient::OrderApi.new
order_uuid = 'order_uuid_example' # String | Order UUID
opts = {
  body: SezzleClient::Price.new # Price | Reauthorize request
}

begin
  #Reauthorize amount by order
  result = api_instance.post_v2_reauthorize_by_order(order_uuid, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling OrderApi->post_v2_reauthorize_by_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_uuid** | **String**| Order UUID |
 **body** | [**Price**](Price.md)| Reauthorize request | [optional]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_v2_refund_by_order**
> InlineResponse2006 post_v2_refund_by_order(order_uuid, opts)

Refund amount by order

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

api_instance = SezzleClient::OrderApi.new
order_uuid = 'order_uuid_example' # String | Order UUID
opts = {
  body: SezzleClient::Price.new # Price | Refund request
}

begin
  #Refund amount by order
  result = api_instance.post_v2_refund_by_order(order_uuid, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling OrderApi->post_v2_refund_by_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_uuid** | **String**| Order UUID |
 **body** | [**Price**](Price.md)| Refund request | [optional]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_v2_release_by_order**
> InlineResponse2006 post_v2_release_by_order(order_uuid, opts)

Release amount by order

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

api_instance = SezzleClient::OrderApi.new
order_uuid = 'order_uuid_example' # String | Order UUID
opts = {
  body: SezzleClient::Price.new # Price | Release request
}

begin
  #Release amount by order
  result = api_instance.post_v2_release_by_order(order_uuid, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling OrderApi->post_v2_release_by_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_uuid** | **String**| Order UUID |
 **body** | [**Price**](Price.md)| Release request | [optional]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_v2_upcharge_by_order**
> InlineResponse2007 post_v2_upcharge_by_order(order_uuid, opts)

Upcharge amount by order

### DEVELOPER PREVIEW *This API is subject to change and limited to select merchants. Bug fixes and new features will be released based on feedback throughout the preview period.*   - This endpoint is not live and will return a `501 Not Implemented`

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

api_instance = SezzleClient::OrderApi.new
order_uuid = 'order_uuid_example' # String | Order UUID
opts = {
  body: SezzleClient::Body4.new # Body4 | Upcharge request
}

begin
  #Upcharge amount by order
  result = api_instance.post_v2_upcharge_by_order(order_uuid, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling OrderApi->post_v2_upcharge_by_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_uuid** | **String**| Order UUID |
 **body** | [**Body4**](Body4.md)| Upcharge request | [optional]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



