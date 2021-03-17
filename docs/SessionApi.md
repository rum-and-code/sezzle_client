# SezzleClient::SessionApi

All URIs are relative to *//sandbox.gateway.sezzle.com/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v2_session**](SessionApi.md#get_v2_session) | **GET** /session/{session_uuid} | Get session status
[**post_v2_session**](SessionApi.md#post_v2_session) | **POST** /session | Create a new session

# **get_v2_session**
> InlineResponse200 get_v2_session(session_uuid)

Get session status

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

api_instance = SezzleClient::SessionApi.new
session_uuid = 'session_uuid_example' # String | Session UUID


begin
  #Get session status
  result = api_instance.get_v2_session(session_uuid)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling SessionApi->get_v2_session: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **session_uuid** | **String**| Session UUID |

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_v2_session**
> InlineResponse2011 post_v2_session(body)

Create a new session

Create new customer checkout and/or tokenize customer

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

api_instance = SezzleClient::SessionApi.new
body = SezzleClient::Session.new # Session | Session request


begin
  #Create a new session
  result = api_instance.post_v2_session(body)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling SessionApi->post_v2_session: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Session**](Session.md)| Session request |

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



