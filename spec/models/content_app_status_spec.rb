=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::ContentAppStatus
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContentAppStatus' do
  before do
    # run before each test
    @instance = SwaggerClient::ContentAppStatus.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentAppStatus' do
    it 'should create an instance of ContentAppStatus' do
      expect(@instance).to be_instance_of(SwaggerClient::ContentAppStatus)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "last_heartbeat"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
