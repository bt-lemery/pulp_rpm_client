=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ContentModulemdDefaultsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContentModulemdDefaultsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ContentModulemdDefaultsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentModulemdDefaultsApi' do
    it 'should create an instance of ContentModulemdDefaultsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ContentModulemdDefaultsApi)
    end
  end

  # unit tests for create
  # Create a modulemd defaults
  # Trigger an asynchronous task to create content,optionally create new repository version.
  # @param relative_path Path where the artifact is located relative to distributions base_path
  # @param _module Modulemd name.
  # @param stream Modulemd default stream.
  # @param profiles Default profiles for modulemd streams.
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
  # List modulemd defaultss
  # ViewSet for Modulemd.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :repository_version Repository Version referenced by HREF
  # @option opts [String] :repository_version_added Repository Version referenced by HREF
  # @option opts [String] :repository_version_removed Repository Version referenced by HREF
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [InlineResponse2004]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Inspect a modulemd defaults
  # ViewSet for Modulemd.
  # @param modulemd_defaults_href URI of Modulemd Defaults. e.g.: /pulp/api/v3/content/rpm/modulemd_defaults/1/
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [RpmModulemdDefaults]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end