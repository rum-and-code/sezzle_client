# sezzle_client

SezzleClient - the Ruby gem for the Sezzle API

The Sezzle API is intended for merchants interested in accepting Sezzle Pay as a payment option.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build sezzle_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./sezzle_client-1.0.0.gem
```
(for development, run `gem install --dev ./sezzle_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'sezzle_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'sezzle_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
SezzleClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SezzleClient::CustomerApi.new
customer_uuid = 'customer_uuid_example' # String | Customer UUID
opts = {
  body: SezzleClient::Body2.new, # Body2 | Order request
  sezzle_request_id: 'sezzle_request_id_example' # String | Unique client-generated ID to enforce idempotency
}

begin
  #Create order by customer
  result = api_instance.post_v2_customer_order(customer_uuid, opts)
  p result
rescue SezzleClient::ApiError => e
  puts "Exception when calling CustomerApi->post_v2_customer_order: #{e}"
end
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
  api_instance.patch_v2_checkout(body, order_uuid)
rescue SezzleClient::ApiError => e
  puts "Exception when calling OrderApi->patch_v2_checkout: #{e}"
end
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *//sandbox.gateway.sezzle.com/v2/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SezzleClient::BearerAuthenticationApi* | [**post_v1_authentication**](docs/BearerAuthenticationApi.md#post_v1_authentication) | **POST** /authentication | Get bearer authentication token
*SezzleClient::CustomerApi* | [**delete_v2_token**](docs/CustomerApi.md#delete_v2_token) | **DELETE** /customer/{customer_uuid} | Delete customer
*SezzleClient::CustomerApi* | [**get_v2_customer**](docs/CustomerApi.md#get_v2_customer) | **GET** /customer/{customer_uuid} | Get customer
*SezzleClient::CustomerApi* | [**get_v2_customer_list**](docs/CustomerApi.md#get_v2_customer_list) | **GET** /customer | Get list of customers
*SezzleClient::CustomerApi* | [**post_v2_customer_order**](docs/CustomerApi.md#post_v2_customer_order) | **POST** /customer/{customer_uuid}/order | Create order by customer
*SezzleClient::CustomerApi* | [**preapprove_v2_token**](docs/CustomerApi.md#preapprove_v2_token) | **POST** /customer/{customer_uuid}/preapprove | Preapprove amount by customer
*SezzleClient::OrderApi* | [**get_v2_order**](docs/OrderApi.md#get_v2_order) | **GET** /order/{order_uuid} | Get order details
*SezzleClient::OrderApi* | [**patch_v2_checkout**](docs/OrderApi.md#patch_v2_checkout) | **PATCH** /order/{order_uuid} | Update order
*SezzleClient::OrderApi* | [**post_v2_capture_by_order**](docs/OrderApi.md#post_v2_capture_by_order) | **POST** /order/{order_uuid}/capture | Capture amount by order
*SezzleClient::OrderApi* | [**post_v2_reauthorize_by_order**](docs/OrderApi.md#post_v2_reauthorize_by_order) | **POST** /order/{order_uuid}/reauthorize | Reauthorize amount by order
*SezzleClient::OrderApi* | [**post_v2_refund_by_order**](docs/OrderApi.md#post_v2_refund_by_order) | **POST** /order/{order_uuid}/refund | Refund amount by order
*SezzleClient::OrderApi* | [**post_v2_release_by_order**](docs/OrderApi.md#post_v2_release_by_order) | **POST** /order/{order_uuid}/release | Release amount by order
*SezzleClient::OrderApi* | [**post_v2_upcharge_by_order**](docs/OrderApi.md#post_v2_upcharge_by_order) | **POST** /order/{order_uuid}/upcharge | Upcharge amount by order
*SezzleClient::ReportsApi* | [**get_interest_account_activity**](docs/ReportsApi.md#get_interest_account_activity) | **GET** /interest/activity | Interest Account Activity
*SezzleClient::ReportsApi* | [**get_interest_account_balance**](docs/ReportsApi.md#get_interest_account_balance) | **GET** /interest/balance | Interest Account Balance
*SezzleClient::ReportsApi* | [**get_settlement_details**](docs/ReportsApi.md#get_settlement_details) | **GET** /settlements/details/{payout_uuid} | Settlement Details
*SezzleClient::ReportsApi* | [**get_settlement_summaries**](docs/ReportsApi.md#get_settlement_summaries) | **GET** /settlements/summaries | Settlement Summaries
*SezzleClient::SessionApi* | [**get_v2_session**](docs/SessionApi.md#get_v2_session) | **GET** /session/{session_uuid} | Get session status
*SezzleClient::SessionApi* | [**post_v2_session**](docs/SessionApi.md#post_v2_session) | **POST** /session | Create a new session
*SezzleClient::TokenApi* | [**get_v2_customer_token**](docs/TokenApi.md#get_v2_customer_token) | **GET** /token/{token}/customer | Get customer token
*SezzleClient::TokenApi* | [**get_v2_session_token**](docs/TokenApi.md#get_v2_session_token) | **GET** /token/{token}/session | Get session token
*SezzleClient::WebhooksApi* | [**delete_v2_webhooks**](docs/WebhooksApi.md#delete_v2_webhooks) | **DELETE** /webhooks/{webhooks_uuid} | Delete webhooks
*SezzleClient::WebhooksApi* | [**get_v2_webhooks**](docs/WebhooksApi.md#get_v2_webhooks) | **GET** /webhooks | List webhooks
*SezzleClient::WebhooksApi* | [**post_v2_webhooks**](docs/WebhooksApi.md#post_v2_webhooks) | **POST** /webhooks | Create webhooks

## Documentation for Models

 - [SezzleClient::Address](docs/Address.md)
 - [SezzleClient::AllOfSessionCustomer](docs/AllOfSessionCustomer.md)
 - [SezzleClient::AllOfSessionOrder](docs/AllOfSessionOrder.md)
 - [SezzleClient::Authorization](docs/Authorization.md)
 - [SezzleClient::Body](docs/Body.md)
 - [SezzleClient::Body1](docs/Body1.md)
 - [SezzleClient::Body2](docs/Body2.md)
 - [SezzleClient::Body3](docs/Body3.md)
 - [SezzleClient::Body4](docs/Body4.md)
 - [SezzleClient::Capture](docs/Capture.md)
 - [SezzleClient::Customer](docs/Customer.md)
 - [SezzleClient::Discount](docs/Discount.md)
 - [SezzleClient::Error](docs/Error.md)
 - [SezzleClient::ErrorInner](docs/ErrorInner.md)
 - [SezzleClient::InlineResponse200](docs/InlineResponse200.md)
 - [SezzleClient::InlineResponse2001](docs/InlineResponse2001.md)
 - [SezzleClient::InlineResponse2002](docs/InlineResponse2002.md)
 - [SezzleClient::InlineResponse2003](docs/InlineResponse2003.md)
 - [SezzleClient::InlineResponse2004](docs/InlineResponse2004.md)
 - [SezzleClient::InlineResponse2005](docs/InlineResponse2005.md)
 - [SezzleClient::InlineResponse2006](docs/InlineResponse2006.md)
 - [SezzleClient::InlineResponse2007](docs/InlineResponse2007.md)
 - [SezzleClient::InlineResponse2008](docs/InlineResponse2008.md)
 - [SezzleClient::InlineResponse2009](docs/InlineResponse2009.md)
 - [SezzleClient::InlineResponse200Order](docs/InlineResponse200Order.md)
 - [SezzleClient::InlineResponse201](docs/InlineResponse201.md)
 - [SezzleClient::InlineResponse2011](docs/InlineResponse2011.md)
 - [SezzleClient::InlineResponse2011Order](docs/InlineResponse2011Order.md)
 - [SezzleClient::InlineResponse2011Tokenize](docs/InlineResponse2011Tokenize.md)
 - [SezzleClient::InstallmentPlan](docs/InstallmentPlan.md)
 - [SezzleClient::Intent](docs/Intent.md)
 - [SezzleClient::LineItem](docs/LineItem.md)
 - [SezzleClient::Link](docs/Link.md)
 - [SezzleClient::Notification](docs/Notification.md)
 - [SezzleClient::Order](docs/Order.md)
 - [SezzleClient::OrderAuthorization](docs/OrderAuthorization.md)
 - [SezzleClient::Payout](docs/Payout.md)
 - [SezzleClient::PayoutInner](docs/PayoutInner.md)
 - [SezzleClient::Price](docs/Price.md)
 - [SezzleClient::Refund](docs/Refund.md)
 - [SezzleClient::Session](docs/Session.md)
 - [SezzleClient::SessionCancelUrl](docs/SessionCancelUrl.md)
 - [SezzleClient::SessionStatus](docs/SessionStatus.md)
 - [SezzleClient::Token](docs/Token.md)
 - [SezzleClient::Webhook](docs/Webhook.md)

## Documentation for Authorization


### Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

