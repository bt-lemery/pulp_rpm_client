=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for PulpRpmClient::ContentPackagelangpacksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContentPackagelangpacksApi' do
  before do
    # run before each test
    @instance = PulpRpmClient::ContentPackagelangpacksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentPackagelangpacksApi' do
    it 'should create an instance of ContentPackagelangpacksApi' do
      expect(@instance).to be_instance_of(PulpRpmClient::ContentPackagelangpacksApi)
    end
  end

  # unit tests for delete
  # Delete a package langpacks
  # PackageLangpacks ViewSet.
  # @param package_langpacks_href URI of Package Langpacks. e.g.: /pulp/api/v3/content/rpm/packagelangpacks/1/
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List package langpackss
  # PackageLangpacks ViewSet.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :repository_version Repository Version referenced by HREF
  # @option opts [String] :repository_version_added Repository Version referenced by HREF
  # @option opts [String] :repository_version_removed Repository Version referenced by HREF
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [InlineResponse2009]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Inspect a package langpacks
  # PackageLangpacks ViewSet.
  # @param package_langpacks_href URI of Package Langpacks. e.g.: /pulp/api/v3/content/rpm/packagelangpacks/1/
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields A list of fields to include in the response.
  # @option opts [String] :exclude_fields A list of fields to exclude from the response.
  # @return [RpmPackageLangpacks]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
