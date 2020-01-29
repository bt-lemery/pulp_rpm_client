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

# Unit tests for SwaggerClient::DatabaseConnection
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DatabaseConnection' do
  before do
    # run before each test
    @instance = SwaggerClient::DatabaseConnection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DatabaseConnection' do
    it 'should create an instance of DatabaseConnection' do
      expect(@instance).to be_instance_of(SwaggerClient::DatabaseConnection)
    end
  end
  describe 'test attribute "connected"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end