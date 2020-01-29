=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module SwaggerClient
  class RemotesFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a file remote
    #  FileRemote represents an external source of File Content.  The target url of a FileRemote must contain a file manifest, which contains the metadata for all files at the source.
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [FileFileRemote]
    def create(data, opts = {})
      data, _status_code, _headers = create_with_http_info(data, opts)
      data
    end

    # Create a file remote
    #  FileRemote represents an external source of File Content.  The target url of a FileRemote must contain a file manifest, which contains the metadata for all files at the source.
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileFileRemote, Fixnum, Hash)>] FileFileRemote data, response status code and response headers
    def create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RemotesFileApi.create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling RemotesFileApi.create"
      end
      # resource path
      local_var_path = '/pulp/api/v3/remotes/file/file/'

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
        :return_type => 'FileFileRemote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RemotesFileApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a file remote
    # Trigger an asynchronous delete task
    # @param file_remote_href URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def delete(file_remote_href, opts = {})
      data, _status_code, _headers = delete_with_http_info(file_remote_href, opts)
      data
    end

    # Delete a file remote
    # Trigger an asynchronous delete task
    # @param file_remote_href URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def delete_with_http_info(file_remote_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RemotesFileApi.delete ...'
      end
      # verify the required parameter 'file_remote_href' is set
      if @api_client.config.client_side_validation && file_remote_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_remote_href' when calling RemotesFileApi.delete"
      end
      # resource path
      local_var_path = '{file_remote_href}'.sub('{' + 'file_remote_href' + '}', file_remote_href.to_s)

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
        @api_client.config.logger.debug "API called: RemotesFileApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List file remotes
    #  FileRemote represents an external source of File Content.  The target url of a FileRemote must contain a file manifest, which contains the metadata for all files at the source.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [String] :pulp_last_updated__lt Filter results where pulp_last_updated is less than value
    # @option opts [String] :pulp_last_updated__lte Filter results where pulp_last_updated is less than or equal to value
    # @option opts [String] :pulp_last_updated__gt Filter results where pulp_last_updated is greater than value
    # @option opts [String] :pulp_last_updated__gte Filter results where pulp_last_updated is greater than or equal to value
    # @option opts [String] :pulp_last_updated__range Filter results where pulp_last_updated is between two comma separated values
    # @option opts [String] :pulp_last_updated ISO 8601 formatted dates are supported
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [InlineResponse20017]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List file remotes
    #  FileRemote represents an external source of File Content.  The target url of a FileRemote must contain a file manifest, which contains the metadata for all files at the source.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [String] :pulp_last_updated__lt Filter results where pulp_last_updated is less than value
    # @option opts [String] :pulp_last_updated__lte Filter results where pulp_last_updated is less than or equal to value
    # @option opts [String] :pulp_last_updated__gt Filter results where pulp_last_updated is greater than value
    # @option opts [String] :pulp_last_updated__gte Filter results where pulp_last_updated is greater than or equal to value
    # @option opts [String] :pulp_last_updated__range Filter results where pulp_last_updated is between two comma separated values
    # @option opts [String] :pulp_last_updated ISO 8601 formatted dates are supported
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(InlineResponse20017, Fixnum, Hash)>] InlineResponse20017 data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RemotesFileApi.list ...'
      end
      # resource path
      local_var_path = '/pulp/api/v3/remotes/file/file/'

      # query parameters
      query_params = {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'name__in'] = opts[:'name__in'] if !opts[:'name__in'].nil?
      query_params[:'pulp_last_updated__lt'] = opts[:'pulp_last_updated__lt'] if !opts[:'pulp_last_updated__lt'].nil?
      query_params[:'pulp_last_updated__lte'] = opts[:'pulp_last_updated__lte'] if !opts[:'pulp_last_updated__lte'].nil?
      query_params[:'pulp_last_updated__gt'] = opts[:'pulp_last_updated__gt'] if !opts[:'pulp_last_updated__gt'].nil?
      query_params[:'pulp_last_updated__gte'] = opts[:'pulp_last_updated__gte'] if !opts[:'pulp_last_updated__gte'].nil?
      query_params[:'pulp_last_updated__range'] = opts[:'pulp_last_updated__range'] if !opts[:'pulp_last_updated__range'].nil?
      query_params[:'pulp_last_updated'] = opts[:'pulp_last_updated'] if !opts[:'pulp_last_updated'].nil?
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
        :return_type => 'InlineResponse20017')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RemotesFileApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Partially update a file remote
    # Trigger an asynchronous partial update task
    # @param file_remote_href URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def partial_update(file_remote_href, data, opts = {})
      data, _status_code, _headers = partial_update_with_http_info(file_remote_href, data, opts)
      data
    end

    # Partially update a file remote
    # Trigger an asynchronous partial update task
    # @param file_remote_href URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def partial_update_with_http_info(file_remote_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RemotesFileApi.partial_update ...'
      end
      # verify the required parameter 'file_remote_href' is set
      if @api_client.config.client_side_validation && file_remote_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_remote_href' when calling RemotesFileApi.partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling RemotesFileApi.partial_update"
      end
      # resource path
      local_var_path = '{file_remote_href}'.sub('{' + 'file_remote_href' + '}', file_remote_href.to_s)

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
        @api_client.config.logger.debug "API called: RemotesFileApi#partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Inspect a file remote
    #  FileRemote represents an external source of File Content.  The target url of a FileRemote must contain a file manifest, which contains the metadata for all files at the source.
    # @param file_remote_href URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [FileFileRemote]
    def read(file_remote_href, opts = {})
      data, _status_code, _headers = read_with_http_info(file_remote_href, opts)
      data
    end

    # Inspect a file remote
    #  FileRemote represents an external source of File Content.  The target url of a FileRemote must contain a file manifest, which contains the metadata for all files at the source.
    # @param file_remote_href URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(FileFileRemote, Fixnum, Hash)>] FileFileRemote data, response status code and response headers
    def read_with_http_info(file_remote_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RemotesFileApi.read ...'
      end
      # verify the required parameter 'file_remote_href' is set
      if @api_client.config.client_side_validation && file_remote_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_remote_href' when calling RemotesFileApi.read"
      end
      # resource path
      local_var_path = '{file_remote_href}'.sub('{' + 'file_remote_href' + '}', file_remote_href.to_s)

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
        :return_type => 'FileFileRemote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RemotesFileApi#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a file remote
    # Trigger an asynchronous update task
    # @param file_remote_href URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def update(file_remote_href, data, opts = {})
      data, _status_code, _headers = update_with_http_info(file_remote_href, data, opts)
      data
    end

    # Update a file remote
    # Trigger an asynchronous update task
    # @param file_remote_href URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def update_with_http_info(file_remote_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RemotesFileApi.update ...'
      end
      # verify the required parameter 'file_remote_href' is set
      if @api_client.config.client_side_validation && file_remote_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_remote_href' when calling RemotesFileApi.update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling RemotesFileApi.update"
      end
      # resource path
      local_var_path = '{file_remote_href}'.sub('{' + 'file_remote_href' + '}', file_remote_href.to_s)

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
        @api_client.config.logger.debug "API called: RemotesFileApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
