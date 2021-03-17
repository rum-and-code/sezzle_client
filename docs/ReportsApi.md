# SezzleClient::ReportsApi

All URIs are relative to *//sandbox.gateway.sezzle.com/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_interest_account_activity**](ReportsApi.md#get_interest_account_activity) | **GET** /interest/activity | Interest Account Activity
[**get_interest_account_balance**](ReportsApi.md#get_interest_account_balance) | **GET** /interest/balance | Interest Account Balance
[**get_settlement_details**](ReportsApi.md#get_settlement_details) | **GET** /settlements/details/{payout_uuid} | Settlement Details
[**get_settlement_summaries**](ReportsApi.md#get_settlement_summaries) | **GET** /settlements/summaries | Settlement Summaries

# **get_interest_account_activity**
> String get_interest_account_activity(start_date, opts)

Interest Account Activity

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

api_instance = SezzleClient::ReportsApi.new
start_date = 'start_date_example' # String | Start Date
opts = {
  end_date: 'end_date_example', # String | End Date
  offset: 'offset_example', # String | Pagination Offset (Limit 20)
  currency_code: 'currency_code_example' # String | ISO-4217 Currency Code
}

begin
  #Interest Account Activity
  result = api_instance.get_interest_account_activity(start_date, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling ReportsApi->get_interest_account_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| Start Date |
 **end_date** | **String**| End Date | [optional]
 **offset** | **String**| Pagination Offset (Limit 20) | [optional]
 **currency_code** | **String**| ISO-4217 Currency Code | [optional]

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json



# **get_interest_account_balance**
> InlineResponse2009 get_interest_account_balance(opts)

Interest Account Balance

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

api_instance = SezzleClient::ReportsApi.new
opts = {
  currency_code: 'currency_code_example' # String | ISO-4217 Currency Code
}

begin
  #Interest Account Balance
  result = api_instance.get_interest_account_balance(opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling ReportsApi->get_interest_account_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency_code** | **String**| ISO-4217 Currency Code | [optional]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_settlement_details**
> String get_settlement_details(payout_uuid)

Settlement Details

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

api_instance = SezzleClient::ReportsApi.new
payout_uuid = 'payout_uuid_example' # String | Payout UUID


begin
  #Settlement Details
  result = api_instance.get_settlement_details(payout_uuid)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling ReportsApi->get_settlement_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_uuid** | **String**| Payout UUID |

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json



# **get_settlement_summaries**
> Payout get_settlement_summaries(start_date, opts)

Settlement Summaries

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

api_instance = SezzleClient::ReportsApi.new
start_date = 'start_date_example' # String | Start Date
opts = {
  end_date: 'end_date_example', # String | End Date
  offset: 'offset_example', # String | Pagination Offset (Limit 20)
  currency_code: 'currency_code_example' # String | ISO-4217 Currency Code
}

begin
  #Settlement Summaries
  result = api_instance.get_settlement_summaries(start_date, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling ReportsApi->get_settlement_summaries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| Start Date |
 **end_date** | **String**| End Date | [optional]
 **offset** | **String**| Pagination Offset (Limit 20) | [optional]
 **currency_code** | **String**| ISO-4217 Currency Code | [optional]

### Return type

[**Payout**](Payout.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



