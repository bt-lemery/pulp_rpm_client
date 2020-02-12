=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for PulpRpmClient::OrphansApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrphansApi' do
  before do
    # run before each test
    @instance = PulpRpmClient::OrphansApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrphansApi' do
    it 'should create an instance of OrphansApi' do
      expect(@instance).to be_instance_of(PulpRpmClient::OrphansApi)
    end
  end

  # unit tests for delete
  # Delete orphans
  # Trigger an asynchronous task that deletes allorphaned content and artifacts.
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
