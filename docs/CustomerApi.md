# SezzleClient::CustomerApi

All URIs are relative to *//sandbox.gateway.sezzle.com/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_v2_token**](CustomerApi.md#delete_v2_token) | **DELETE** /customer/{customer_uuid} | Delete customer
[**get_v2_customer**](CustomerApi.md#get_v2_customer) | **GET** /customer/{customer_uuid} | Get customer
[**get_v2_customer_list**](CustomerApi.md#get_v2_customer_list) | **GET** /customer | Get list of customers
[**post_v2_customer_order**](CustomerApi.md#post_v2_customer_order) | **POST** /customer/{customer_uuid}/order | Create order by customer
[**preapprove_v2_token**](CustomerApi.md#preapprove_v2_token) | **POST** /customer/{customer_uuid}/preapprove | Preapprove amount by customer

# **delete_v2_token**
> delete_v2_token(customer_uuid)

Delete customer

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

api_instance = SezzleClient::CustomerApi.new
customer_uuid = 'customer_uuid_example' # String | Customer UUID


begin
  #Delete customer
  api_instance.delete_v2_token(customer_uuid)
rescue SezzleClient::ApiError => e
  puts "Exception when calling CustomerApi->delete_v2_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_uuid** | **String**| Customer UUID |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_v2_customer**
> InlineResponse2003 get_v2_customer(customer_uuid)

Get customer

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

api_instance = SezzleClient::CustomerApi.new
customer_uuid = 'customer_uuid_example' # String | Customer UUID


begin
  #Get customer
  result = api_instance.get_v2_customer(customer_uuid)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling CustomerApi->get_v2_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_uuid** | **String**| Customer UUID |

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_v2_customer_list**
> Array&lt;InlineResponse2002&gt; get_v2_customer_list

Get list of customers

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

api_instance = SezzleClient::CustomerApi.new

begin
  #Get list of customers
  result = api_instance.get_v2_customer_list
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling CustomerApi->get_v2_customer_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;InlineResponse2002&gt;**](InlineResponse2002.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_v2_customer_order**
> InlineResponse2005 post_v2_customer_order(customer_uuid, opts)

Create order by customer

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

api_instance = SezzleClient::CustomerApi.new
customer_uuid = 'customer_uuid_example' # String | Customer UUID
opts = {
  body: SezzleClient::Body2.new # Body2 | Order request
  sezzle_request_id: 'sezzle_request_id_example' # String | Unique client-generated ID to enforce idempotency
}

begin
  #Create order by customer
  result = api_instance.post_v2_customer_order(customer_uuid, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling CustomerApi->post_v2_customer_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_uuid** | **String**| Customer UUID |
 **body** | [**Body2**](Body2.md)| Order request | [optional]
 **sezzle_request_id** | **String**| Unique client-generated ID to enforce idempotency | [optional]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **preapprove_v2_token**
> InlineResponse2004 preapprove_v2_token(customer_uuid, opts)

Preapprove amount by customer

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

api_instance = SezzleClient::CustomerApi.new
customer_uuid = 'customer_uuid_example' # String | Customer UUID
opts = {
  body: SezzleClient::Price.new # Price | Preapproval request
}

begin
  #Preapprove amount by customer
  result = api_instance.preapprove_v2_token(customer_uuid, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling CustomerApi->preapprove_v2_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_uuid** | **String**| Customer UUID |
 **body** | [**Price**](Price.md)| Preapproval request | [optional]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



