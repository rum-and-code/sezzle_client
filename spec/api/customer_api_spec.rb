=begin
#Sezzle API

#The Sezzle API is intended for merchants interested in accepting Sezzle Pay as a payment option.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::CustomerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomerApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CustomerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerApi' do
    it 'should create an instance of CustomerApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CustomerApi)
    end
  end

  # unit tests for delete_v2_token
  # Delete customer
  # @param customer_uuid Customer UUID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_v2_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_v2_customer
  # Get customer
  # @param customer_uuid Customer UUID
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2003]
  describe 'get_v2_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_v2_customer_list
  # Get list of customers
  # @param [Hash] opts the optional parameters
  # @return [Array<InlineResponse2002>]
  describe 'get_v2_customer_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v2_customer_order
  # Create order by customer
  # @param customer_uuid Customer UUID
  # @param [Hash] opts the optional parameters
  # @option opts [Body2] :body Order request
  # @option opts [String] :sezzle_request_id Unique client-generated ID to enforce idempotency
  # @return [InlineResponse2005]
  describe 'post_v2_customer_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for preapprove_v2_token
  # Preapprove amount by customer
  # @param customer_uuid Customer UUID
  # @param [Hash] opts the optional parameters
  # @option opts [Price] :body Preapproval request
  # @return [InlineResponse2004]
  describe 'preapprove_v2_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end