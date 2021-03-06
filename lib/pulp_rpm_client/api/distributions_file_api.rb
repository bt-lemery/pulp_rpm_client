=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module PulpRpmClient
  class DistributionsFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a file distribution
    # Trigger an asynchronous create task
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def create(data, opts = {})
      data, _status_code, _headers = create_with_http_info(data, opts)
      data
    end

    # Create a file distribution
    # Trigger an asynchronous create task
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsFileApi.create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling DistributionsFileApi.create"
      end
      # resource path
      local_var_path = '/pulp/api/v3/distributions/file/file/'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(data)
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncOperationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsFileApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a file distribution
    # Trigger an asynchronous delete task
    # @param file_distribution_href URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def delete(file_distribution_href, opts = {})
      data, _status_code, _headers = delete_with_http_info(file_distribution_href, opts)
      data
    end

    # Delete a file distribution
    # Trigger an asynchronous delete task
    # @param file_distribution_href URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def delete_with_http_info(file_distribution_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsFileApi.delete ...'
      end
      # verify the required parameter 'file_distribution_href' is set
      if @api_client.config.client_side_validation && file_distribution_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_distribution_href' when calling DistributionsFileApi.delete"
      end
      # resource path
      local_var_path = '{file_distribution_href}'.sub('{' + 'file_distribution_href' + '}', file_distribution_href.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncOperationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsFileApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List file distributions
    #  FileDistributions host File Publications which makes the metadata and the referenced File Content available to HTTP clients. Additionally, a FileDistribution with an associated FilePublication can be the target url of a File Remote , allowing another instance of Pulp to sync the content.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [String] :base_path 
    # @option opts [String] :base_path__contains Filter results where base_path contains value
    # @option opts [String] :base_path__icontains Filter results where base_path contains value
    # @option opts [String] :base_path__in Filter results where base_path is in a comma-separated list of values
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [InlineResponse20012]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List file distributions
    #  FileDistributions host File Publications which makes the metadata and the referenced File Content available to HTTP clients. Additionally, a FileDistribution with an associated FilePublication can be the target url of a File Remote , allowing another instance of Pulp to sync the content.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [String] :base_path 
    # @option opts [String] :base_path__contains Filter results where base_path contains value
    # @option opts [String] :base_path__icontains Filter results where base_path contains value
    # @option opts [String] :base_path__in Filter results where base_path is in a comma-separated list of values
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsFileApi.list ...'
      end
      # resource path
      local_var_path = '/pulp/api/v3/distributions/file/file/'

      # query parameters
      query_params = {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'name__in'] = opts[:'name__in'] if !opts[:'name__in'].nil?
      query_params[:'base_path'] = opts[:'base_path'] if !opts[:'base_path'].nil?
      query_params[:'base_path__contains'] = opts[:'base_path__contains'] if !opts[:'base_path__contains'].nil?
      query_params[:'base_path__icontains'] = opts[:'base_path__icontains'] if !opts[:'base_path__icontains'].nil?
      query_params[:'base_path__in'] = opts[:'base_path__in'] if !opts[:'base_path__in'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = opts[:'exclude_fields'] if !opts[:'exclude_fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsFileApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Partially update a file distribution
    # Trigger an asynchronous partial update task
    # @param file_distribution_href URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def partial_update(file_distribution_href, data, opts = {})
      data, _status_code, _headers = partial_update_with_http_info(file_distribution_href, data, opts)
      data
    end

    # Partially update a file distribution
    # Trigger an asynchronous partial update task
    # @param file_distribution_href URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def partial_update_with_http_info(file_distribution_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsFileApi.partial_update ...'
      end
      # verify the required parameter 'file_distribution_href' is set
      if @api_client.config.client_side_validation && file_distribution_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_distribution_href' when calling DistributionsFileApi.partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling DistributionsFileApi.partial_update"
      end
      # resource path
      local_var_path = '{file_distribution_href}'.sub('{' + 'file_distribution_href' + '}', file_distribution_href.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(data)
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncOperationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsFileApi#partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Inspect a file distribution
    #  FileDistributions host File Publications which makes the metadata and the referenced File Content available to HTTP clients. Additionally, a FileDistribution with an associated FilePublication can be the target url of a File Remote , allowing another instance of Pulp to sync the content.
    # @param file_distribution_href URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [FileFileDistribution]
    def read(file_distribution_href, opts = {})
      data, _status_code, _headers = read_with_http_info(file_distribution_href, opts)
      data
    end

    # Inspect a file distribution
    #  FileDistributions host File Publications which makes the metadata and the referenced File Content available to HTTP clients. Additionally, a FileDistribution with an associated FilePublication can be the target url of a File Remote , allowing another instance of Pulp to sync the content.
    # @param file_distribution_href URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(FileFileDistribution, Fixnum, Hash)>] FileFileDistribution data, response status code and response headers
    def read_with_http_info(file_distribution_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsFileApi.read ...'
      end
      # verify the required parameter 'file_distribution_href' is set
      if @api_client.config.client_side_validation && file_distribution_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_distribution_href' when calling DistributionsFileApi.read"
      end
      # resource path
      local_var_path = '{file_distribution_href}'.sub('{' + 'file_distribution_href' + '}', file_distribution_href.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = opts[:'exclude_fields'] if !opts[:'exclude_fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FileFileDistribution')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsFileApi#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a file distribution
    # Trigger an asynchronous update task
    # @param file_distribution_href URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def update(file_distribution_href, data, opts = {})
      data, _status_code, _headers = update_with_http_info(file_distribution_href, data, opts)
      data
    end

    # Update a file distribution
    # Trigger an asynchronous update task
    # @param file_distribution_href URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def update_with_http_info(file_distribution_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsFileApi.update ...'
      end
      # verify the required parameter 'file_distribution_href' is set
      if @api_client.config.client_side_validation && file_distribution_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_distribution_href' when calling DistributionsFileApi.update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling DistributionsFileApi.update"
      end
      # resource path
      local_var_path = '{file_distribution_href}'.sub('{' + 'file_distribution_href' + '}', file_distribution_href.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(data)
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncOperationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsFileApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
