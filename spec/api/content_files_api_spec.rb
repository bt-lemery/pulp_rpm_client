=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ContentFilesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContentFilesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ContentFilesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentFilesApi' do
    it 'should create an instance of ContentFilesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ContentFilesApi)
    end
  end

  # unit tests for create
  # Create a file content
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
  # List file contents
  #  FileContent represents a single file and its metadata, which can be added and removed from repositories.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :relative_path Filter results where relative_path matches value
  # @option opts [String] :digest Filter results where digest matches value
  # @option opts [String] :repository_version Repository Version referenced by HREF
  # @option opts [String] :repository_version_added Repository Version referenced by HREF
  # @option opts [String] :repository_version_removed Repository Version referenced by HREF
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [InlineResponse2001]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Inspect a file content
  #  FileContent represents a single file and its metadata, which can be added and removed from repositories.
  # @param file_content_href URI of File Content. e.g.: /pulp/api/v3/content/file/files/1/
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [FileFileContent]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end