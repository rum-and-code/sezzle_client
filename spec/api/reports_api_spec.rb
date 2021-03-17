=begin
#Sezzle API

#The Sezzle API is intended for merchants interested in accepting Sezzle Pay as a payment option.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ReportsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ReportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportsApi' do
    it 'should create an instance of ReportsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ReportsApi)
    end
  end

  # unit tests for get_interest_account_activity
  # Interest Account Activity
  # @param start_date Start Date
  # @param [Hash] opts the optional parameters
  # @option opts [String] :end_date End Date
  # @option opts [String] :offset Pagination Offset (Limit 20)
  # @option opts [String] :currency_code ISO-4217 Currency Code
  # @return [String]
  describe 'get_interest_account_activity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_interest_account_balance
  # Interest Account Balance
  # @param [Hash] opts the optional parameters
  # @option opts [String] :currency_code ISO-4217 Currency Code
  # @return [InlineResponse2009]
  describe 'get_interest_account_balance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_settlement_details
  # Settlement Details
  # @param payout_uuid Payout UUID
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_settlement_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_settlement_summaries
  # Settlement Summaries
  # @param start_date Start Date
  # @param [Hash] opts the optional parameters
  # @option opts [String] :end_date End Date
  # @option opts [String] :offset Pagination Offset (Limit 20)
  # @option opts [String] :currency_code ISO-4217 Currency Code
  # @return [Payout]
  describe 'get_settlement_summaries test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
