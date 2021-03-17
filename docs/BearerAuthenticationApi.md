# SezzleClient::BearerAuthenticationApi

All URIs are relative to *//sandbox.gateway.sezzle.com/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_v1_authentication**](BearerAuthenticationApi.md#post_v1_authentication) | **POST** /authentication | Get bearer authentication token

# **post_v1_authentication**
> InlineResponse201 post_v1_authentication(body)

Get bearer authentication token

### Example
```ruby
# load the gem
require 'sezzle_client'

api_instance = SezzleClient::BearerAuthenticationApi.new
body = SezzleClient::Body.new # Body | Authentication request


begin
  #Get bearer authentication token
  result = api_instance.post_v1_authentication(body)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling BearerAuthenticationApi->post_v1_authentication: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)| Authentication request |

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



