=begin
#Sezzle API

#The Sezzle API is intended for merchants interested in accepting Sezzle Pay as a payment option.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::Body
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Body' do
  before do
    # run before each test
    @instance = SwaggerClient::Body.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Body' do
    it 'should create an instance of Body' do
      expect(@instance).to be_instance_of(SwaggerClient::Body)
    end
  end
  describe 'test attribute "private_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "public_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
