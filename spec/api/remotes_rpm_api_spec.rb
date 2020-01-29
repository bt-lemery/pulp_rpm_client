=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::RemotesRpmApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RemotesRpmApi' do
  before do
    # run before each test
    @instance = SwaggerClient::RemotesRpmApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RemotesRpmApi' do
    it 'should create an instance of RemotesRpmApi' do
      expect(@instance).to be_instance_of(SwaggerClient::RemotesRpmApi)
    end
  end

  # unit tests for create
  # Create a rpm remote
  # A ViewSet for RpmRemote.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [RpmRpmRemote]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Delete a rpm remote
  # Trigger an asynchronous delete task
  # @param rpm_remote_href URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List rpm remotes
  # A ViewSet for RpmRemote.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name 
  # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
  # @option opts [String] :pulp_last_updated__lt Filter results where pulp_last_updated is less than value
  # @option opts [String] :pulp_last_updated__lte Filter results where pulp_last_updated is less than or equal to value
  # @option opts [String] :pulp_last_updated__gt Filter results where pulp_last_updated is greater than value
  # @option opts [String] :pulp_last_updated__gte Filter results where pulp_last_updated is greater than or equal to value
  # @option opts [String] :pulp_last_updated__range Filter results where pulp_last_updated is between two comma separated values
  # @option opts [String] :pulp_last_updated ISO 8601 formatted dates are supported
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [InlineResponse20018]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for partial_update
  # Partially update a rpm remote
  # Trigger an asynchronous partial update task
  # @param rpm_remote_href URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'partial_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Inspect a rpm remote
  # A ViewSet for RpmRemote.
  # @param rpm_remote_href URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [RpmRpmRemote]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a rpm remote
  # Trigger an asynchronous update task
  # @param rpm_remote_href URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
