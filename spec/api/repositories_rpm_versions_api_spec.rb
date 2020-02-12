=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for PulpRpmClient::RepositoriesRpmVersionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RepositoriesRpmVersionsApi' do
  before do
    # run before each test
    @instance = PulpRpmClient::RepositoriesRpmVersionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RepositoriesRpmVersionsApi' do
    it 'should create an instance of RepositoriesRpmVersionsApi' do
      expect(@instance).to be_instance_of(PulpRpmClient::RepositoriesRpmVersionsApi)
    end
  end

  # unit tests for delete
  # Delete a repository version
  # Trigger an asynchronous task to delete a repositroy version.
  # @param rpm_repository_version_href URI of Repository Version. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/versions/1/
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List repository versions
  # RpmRepositoryVersion represents a single rpm repository version.
  # @param rpm_repository_href URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ordering Which field to use when ordering the results.
  # @option opts [Float] :number 
  # @option opts [Float] :number__lt Filter results where number is less than value
  # @option opts [Float] :number__lte Filter results where number is less than or equal to value
  # @option opts [Float] :number__gt Filter results where number is greater than value
  # @option opts [Float] :number__gte Filter results where number is greater than or equal to value
  # @option opts [Float] :number__range Filter results where number is between two comma separated values
  # @option opts [String] :pulp_created__lt Filter results where pulp_created is less than value
  # @option opts [String] :pulp_created__lte Filter results where pulp_created is less than or equal to value
  # @option opts [String] :pulp_created__gt Filter results where pulp_created is greater than value
  # @option opts [String] :pulp_created__gte Filter results where pulp_created is greater than or equal to value
  # @option opts [String] :pulp_created__range Filter results where pulp_created is between two comma separated values
  # @option opts [String] :content Content Unit referenced by HREF
  # @option opts [String] :pulp_created ISO 8601 formatted dates are supported
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [InlineResponse20020]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Inspect a repository version
  # RpmRepositoryVersion represents a single rpm repository version.
  # @param rpm_repository_version_href URI of Repository Version. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/versions/1/
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [RepositoryVersion]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
