=begin
#Sezzle API

#The Sezzle API is intended for merchants interested in accepting Sezzle Pay as a payment option.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module SwaggerClient
  class Intent
    AUTH = 'AUTH'.freeze
    CAPTURE = 'CAPTURE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = Intent.constants.select { |c| Intent::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #Intent" if constantValues.empty?
      value
    end
  end
end