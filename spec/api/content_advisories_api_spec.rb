=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ContentAdvisoriesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContentAdvisoriesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ContentAdvisoriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentAdvisoriesApi' do
    it 'should create an instance of ContentAdvisoriesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ContentAdvisoriesApi)
    end
  end

  # unit tests for create
  # Create an update record
  # Trigger an asynchronous task to create content,optionally create new repository version.
  # @param relative_path Path where the artifact is located relative to distributions base_path
  # @param [Hash] opts the optional parameters
  # @option opts [String] :artifact Artifact file representing the physical content
  # @option opts [File] :file An uploaded file that should be turned into the artifact of the content unit.
  # @option opts [String] :repository A URI of a repository the new content unit should be associated with.
  # @return [AsyncOperationResponse]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List update records
  # Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/advisories/  Also specify queryset and serializer for UpdateRecord.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id Filter results where id matches value
  # @option opts [String] :id__in Filter results where id is in a comma-separated list of values
  # @option opts [String] :status Filter results where status matches value
  # @option opts [String] :status__in Filter results where status is in a comma-separated list of values
  # @option opts [String] :severity Filter results where severity matches value
  # @option opts [String] :severity__in Filter results where severity is in a comma-separated list of values
  # @option opts [String] :type Filter results where type matches value
  # @option opts [String] :type__in Filter results where type is in a comma-separated list of values
  # @option opts [String] :repository_version Repository Version referenced by HREF
  # @option opts [String] :repository_version_added Repository Version referenced by HREF
  # @option opts [String] :repository_version_removed Repository Version referenced by HREF
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [InlineResponse2002]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Inspect an update record
  # Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/advisories/  Also specify queryset and serializer for UpdateRecord.
  # @param update_record_href URI of Update Record. e.g.: /pulp/api/v3/content/rpm/advisories/1/
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [RpmUpdateRecord]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
