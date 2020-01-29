=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module SwaggerClient
  class PublicationsFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a file publication
    # Trigger an asynchronous task to publish file content.
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def create(data, opts = {})
      data, _status_code, _headers = create_with_http_info(data, opts)
      data
    end

    # Create a file publication
    # Trigger an asynchronous task to publish file content.
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicationsFileApi.create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling PublicationsFileApi.create"
      end
      # resource path
      local_var_path = '/pulp/api/v3/publications/file/file/'

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
        @api_client.config.logger.debug "API called: PublicationsFileApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a file publication
    #  A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.
    # @param file_publication_href URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(file_publication_href, opts = {})
      delete_with_http_info(file_publication_href, opts)
      nil
    end

    # Delete a file publication
    #  A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.
    # @param file_publication_href URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(file_publication_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicationsFileApi.delete ...'
      end
      # verify the required parameter 'file_publication_href' is set
      if @api_client.config.client_side_validation && file_publication_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_publication_href' when calling PublicationsFileApi.delete"
      end
      # resource path
      local_var_path = '{file_publication_href}'.sub('{' + 'file_publication_href' + '}', file_publication_href.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicationsFileApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List file publications
    #  A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ordering Which field to use when ordering the results.
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [InlineResponse20015]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List file publications
    #  A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ordering Which field to use when ordering the results.
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(InlineResponse20015, Fixnum, Hash)>] InlineResponse20015 data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicationsFileApi.list ...'
      end
      # resource path
      local_var_path = '/pulp/api/v3/publications/file/file/'

      # query parameters
      query_params = {}
      query_params[:'ordering'] = opts[:'ordering'] if !opts[:'ordering'].nil?
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
        :return_type => 'InlineResponse20015')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicationsFileApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Inspect a file publication
    #  A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.
    # @param file_publication_href URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [FileFilePublication]
    def read(file_publication_href, opts = {})
      data, _status_code, _headers = read_with_http_info(file_publication_href, opts)
      data
    end

    # Inspect a file publication
    #  A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.
    # @param file_publication_href URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(FileFilePublication, Fixnum, Hash)>] FileFilePublication data, response status code and response headers
    def read_with_http_info(file_publication_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicationsFileApi.read ...'
      end
      # verify the required parameter 'file_publication_href' is set
      if @api_client.config.client_side_validation && file_publication_href.nil?
        fail ArgumentError, "Missing the required parameter 'file_publication_href' when calling PublicationsFileApi.read"
      end
      # resource path
      local_var_path = '{file_publication_href}'.sub('{' + 'file_publication_href' + '}', file_publication_href.to_s)

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
        :return_type => 'FileFilePublication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicationsFileApi#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
