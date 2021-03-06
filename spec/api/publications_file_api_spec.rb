=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for PulpRpmClient::PublicationsFileApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PublicationsFileApi' do
  before do
    # run before each test
    @instance = PulpRpmClient::PublicationsFileApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PublicationsFileApi' do
    it 'should create an instance of PublicationsFileApi' do
      expect(@instance).to be_instance_of(PulpRpmClient::PublicationsFileApi)
    end
  end

  # unit tests for create
  # Create a file publication
  # Trigger an asynchronous task to publish file content.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Delete a file publication
  #  A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.
  # @param file_publication_href URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List file publications
  #  A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ordering Which field to use when ordering the results.
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [InlineResponse20015]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Inspect a file publication
  #  A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.
  # @param file_publication_href URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [FileFilePublication]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
