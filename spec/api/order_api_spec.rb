=begin
#Sezzle API

#The Sezzle API is intended for merchants interested in accepting Sezzle Pay as a payment option.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::OrderApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderApi' do
  before do
    # run before each test
    @instance = SwaggerClient::OrderApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderApi' do
    it 'should create an instance of OrderApi' do
      expect(@instance).to be_instance_of(SwaggerClient::OrderApi)
    end
  end

  # unit tests for get_v2_order
  # Get order details
  # @param order_uuid Order UUID
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2001]
  describe 'get_v2_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_v2_checkout
  # Update order
  # @param body Session request
  # @param order_uuid Order UUID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'patch_v2_checkout test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v2_capture_by_order
  # Capture amount by order
  # @param order_uuid Order UUID
  # @param [Hash] opts the optional parameters
  # @option opts [Body3] :body Capture request
  # @return [InlineResponse2006]
  describe 'post_v2_capture_by_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v2_reauthorize_by_order
  # Reauthorize amount by order
  # ### DEVELOPER PREVIEW   *This API is subject to change and limited to select merchants. Bug fixes and new features will be released based on feedback throughout the preview period.*   - Requires customer object on Create Session with at minimum &#x60;{ tokenize: true }&#x60; - Response will be a new order and its &#x60;uuid&#x60; can be used on the Order API endpoints 
  # @param order_uuid Order UUID
  # @param [Hash] opts the optional parameters
  # @option opts [Price] :body Reauthorize request
  # @return [InlineResponse2007]
  describe 'post_v2_reauthorize_by_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v2_refund_by_order
  # Refund amount by order
  # @param order_uuid Order UUID
  # @param [Hash] opts the optional parameters
  # @option opts [Price] :body Refund request
  # @return [InlineResponse2006]
  describe 'post_v2_refund_by_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v2_release_by_order
  # Release amount by order
  # @param order_uuid Order UUID
  # @param [Hash] opts the optional parameters
  # @option opts [Price] :body Release request
  # @return [InlineResponse2006]
  describe 'post_v2_release_by_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v2_upcharge_by_order
  # Upcharge amount by order
  # ### DEVELOPER PREVIEW *This API is subject to change and limited to select merchants. Bug fixes and new features will be released based on feedback throughout the preview period.*   - This endpoint is not live and will return a &#x60;501 Not Implemented&#x60; 
  # @param order_uuid Order UUID
  # @param [Hash] opts the optional parameters
  # @option opts [Body4] :body Upcharge request
  # @return [InlineResponse2007]
  describe 'post_v2_upcharge_by_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end