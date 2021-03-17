# SezzleClient::TokenApi

All URIs are relative to *//sandbox.gateway.sezzle.com/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v2_customer_token**](TokenApi.md#get_v2_customer_token) | **GET** /token/{token}/customer | Get customer token
[**get_v2_session_token**](TokenApi.md#get_v2_session_token) | **GET** /token/{token}/session | Get session token

# **get_v2_customer_token**
> get_v2_customer_token(token)

Get customer token

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

api_instance = SezzleClient::TokenApi.new
token = 'token_example' # String | Customer initiated token, e.g. generated in mobile app


begin
  #Get customer token
  api_instance.get_v2_customer_token(token)
rescue SezzleClient::ApiError => e
  puts "Exception when calling TokenApi->get_v2_customer_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Customer initiated token, e.g. generated in mobile app |

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_v2_session_token**
> Token get_v2_session_token(token)

Get session token

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

api_instance = SezzleClient::TokenApi.new
token = 'token_example' # String | Merchant initiated token


begin
  #Get session token
  result = api_instance.get_v2_session_token(token)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling TokenApi->get_v2_session_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Merchant initiated token |

### Return type

[**Token**](Token.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



