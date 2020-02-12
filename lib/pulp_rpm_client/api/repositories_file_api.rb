=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module PulpRpmClient
  class RepositoriesFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a file repository
    #  FileRepository represents a single file repository, to which content can be synced, added, or removed.
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [FileFileRepository]
    def create(data, opts = {})
      data, _status_code, _headers = create_with_http_info(data, opts)
      data
    end

    # Create a file repository
    #  FileRepository represents a single file repository, to which content can be synced, added, or removed.
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileFileRepository, Fixnum, Hash)>] FileFileRepository data, response status code and response headers
    def create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepositoriesFileApi.create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling RepositoriesFileApi.create"
      end
      # resource path
      local_var_path = '/pulp/api/v3/repositories/file/file/'

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
        :return_type => 'FileFileRepository')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RepositoriesFileApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a file repository
    # Trigger an asynchronous task to delete a repository.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def delete(file_repository_href, opts = {})
      data, _status_code, _headers = delete_with_http_info(file_repository_href, opts)
      data
    end

    # Delete a file repository
    # Trigger an asynchronous task to delete a repository.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def delete_with_http_info(file_repository_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepositoriesFileApi.delete ...'
      end
      # verify the required parameter 'file_repository_href' is set
      if @api_client.config.client_side_validation && file_repository_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_repository_href' when calling RepositoriesFileApi.delete"
      end
      # resource path
      local_var_path = '{file_repository_href}'.sub('{' + 'file_repository_href' + '}', file_repository_href.to_s)

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
        @api_client.config.logger.debug "API called: RepositoriesFileApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List file repositorys
    #  FileRepository represents a single file repository, to which content can be synced, added, or removed.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [InlineResponse20019]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List file repositorys
    #  FileRepository represents a single file repository, to which content can be synced, added, or removed.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(InlineResponse20019, Fixnum, Hash)>] InlineResponse20019 data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepositoriesFileApi.list ...'
      end
      # resource path
      local_var_path = '/pulp/api/v3/repositories/file/file/'

      # query parameters
      query_params = {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'name__in'] = opts[:'name__in'] if !opts[:'name__in'].nil?
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
        :return_type => 'InlineResponse20019')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RepositoriesFileApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trigger an asynchronous task to create a new repository version.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def modify(file_repository_href, data, opts = {})
      data, _status_code, _headers = modify_with_http_info(file_repository_href, data, opts)
      data
    end

    # Trigger an asynchronous task to create a new repository version.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def modify_with_http_info(file_repository_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepositoriesFileApi.modify ...'
      end
      # verify the required parameter 'file_repository_href' is set
      if @api_client.config.client_side_validation && file_repository_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_repository_href' when calling RepositoriesFileApi.modify"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling RepositoriesFileApi.modify"
      end
      # resource path
      local_var_path = '{file_repository_href}modify/'.sub('{' + 'file_repository_href' + '}', file_repository_href.to_s)

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
        @api_client.config.logger.debug "API called: RepositoriesFileApi#modify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Partially update a file repository
    #  FileRepository represents a single file repository, to which content can be synced, added, or removed.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [FileFileRepository]
    def partial_update(file_repository_href, data, opts = {})
      data, _status_code, _headers = partial_update_with_http_info(file_repository_href, data, opts)
      data
    end

    # Partially update a file repository
    #  FileRepository represents a single file repository, to which content can be synced, added, or removed.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileFileRepository, Fixnum, Hash)>] FileFileRepository data, response status code and response headers
    def partial_update_with_http_info(file_repository_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepositoriesFileApi.partial_update ...'
      end
      # verify the required parameter 'file_repository_href' is set
      if @api_client.config.client_side_validation && file_repository_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_repository_href' when calling RepositoriesFileApi.partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling RepositoriesFileApi.partial_update"
      end
      # resource path
      local_var_path = '{file_repository_href}'.sub('{' + 'file_repository_href' + '}', file_repository_href.to_s)

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
        :return_type => 'FileFileRepository')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RepositoriesFileApi#partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Inspect a file repository
    #  FileRepository represents a single file repository, to which content can be synced, added, or removed.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [FileFileRepository]
    def read(file_repository_href, opts = {})
      data, _status_code, _headers = read_with_http_info(file_repository_href, opts)
      data
    end

    # Inspect a file repository
    #  FileRepository represents a single file repository, to which content can be synced, added, or removed.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(FileFileRepository, Fixnum, Hash)>] FileFileRepository data, response status code and response headers
    def read_with_http_info(file_repository_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepositoriesFileApi.read ...'
      end
      # verify the required parameter 'file_repository_href' is set
      if @api_client.config.client_side_validation && file_repository_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_repository_href' when calling RepositoriesFileApi.read"
      end
      # resource path
      local_var_path = '{file_repository_href}'.sub('{' + 'file_repository_href' + '}', file_repository_href.to_s)

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
        :return_type => 'FileFileRepository')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RepositoriesFileApi#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trigger an asynchronous task to sync file content.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def sync(file_repository_href, data, opts = {})
      data, _status_code, _headers = sync_with_http_info(file_repository_href, data, opts)
      data
    end

    # Trigger an asynchronous task to sync file content.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def sync_with_http_info(file_repository_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepositoriesFileApi.sync ...'
      end
      # verify the required parameter 'file_repository_href' is set
      if @api_client.config.client_side_validation && file_repository_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_repository_href' when calling RepositoriesFileApi.sync"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling RepositoriesFileApi.sync"
      end
      # resource path
      local_var_path = '{file_repository_href}sync/'.sub('{' + 'file_repository_href' + '}', file_repository_href.to_s)

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
        @api_client.config.logger.debug "API called: RepositoriesFileApi#sync\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a file repository
    # Trigger an asynchronous task to update a repository.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def update(file_repository_href, data, opts = {})
      data, _status_code, _headers = update_with_http_info(file_repository_href, data, opts)
      data
    end

    # Update a file repository
    # Trigger an asynchronous task to update a repository.
    # @param file_repository_href URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def update_with_http_info(file_repository_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepositoriesFileApi.update ...'
      end
      # verify the required parameter 'file_repository_href' is set
      if @api_client.config.client_side_validation && file_repository_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_repository_href' when calling RepositoriesFileApi.update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling RepositoriesFileApi.update"
      end
      # resource path
      local_var_path = '{file_repository_href}'.sub('{' + 'file_repository_href' + '}', file_repository_href.to_s)

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
        @api_client.config.logger.debug "API called: RepositoriesFileApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
