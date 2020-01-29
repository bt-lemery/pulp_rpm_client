=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module SwaggerClient
  class UploadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Finish an Upload
    # Queues a Task that creates an Artifact, and the Upload gets deleted and cannot be re-used.
    # @param upload_href URI of Upload. e.g.: /pulp/api/v3/uploads/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def commit(upload_href, data, opts = {})
      data, _status_code, _headers = commit_with_http_info(upload_href, data, opts)
      data
    end

    # Finish an Upload
    # Queues a Task that creates an Artifact, and the Upload gets deleted and cannot be re-used.
    # @param upload_href URI of Upload. e.g.: /pulp/api/v3/uploads/1/
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def commit_with_http_info(upload_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.commit ...'
      end
      # verify the required parameter 'upload_href' is set
      if @api_client.config.client_side_validation && upload_href.nil?
        fail ArgumentError, "Missing the required parameter 'upload_href' when calling UploadsApi.commit"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling UploadsApi.commit"
      end
      # resource path
      local_var_path = '{upload_href}commit/'.sub('{' + 'upload_href' + '}', upload_href.to_s)

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
        @api_client.config.logger.debug "API called: UploadsApi#commit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create an upload
    # View for chunked uploads.
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Upload]
    def create(data, opts = {})
      data, _status_code, _headers = create_with_http_info(data, opts)
      data
    end

    # Create an upload
    # View for chunked uploads.
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Upload, Fixnum, Hash)>] Upload data, response status code and response headers
    def create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling UploadsApi.create"
      end
      # resource path
      local_var_path = '/pulp/api/v3/uploads/'

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
        :return_type => 'Upload')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UploadsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an upload
    # View for chunked uploads.
    # @param upload_href URI of Upload. e.g.: /pulp/api/v3/uploads/1/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(upload_href, opts = {})
      delete_with_http_info(upload_href, opts)
      nil
    end

    # Delete an upload
    # View for chunked uploads.
    # @param upload_href URI of Upload. e.g.: /pulp/api/v3/uploads/1/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(upload_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.delete ...'
      end
      # verify the required parameter 'upload_href' is set
      if @api_client.config.client_side_validation && upload_href.nil?
        fail ArgumentError, "Missing the required parameter 'upload_href' when calling UploadsApi.delete"
      end
      # resource path
      local_var_path = '{upload_href}'.sub('{' + 'upload_href' + '}', upload_href.to_s)

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
        @api_client.config.logger.debug "API called: UploadsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List uploads
    # View for chunked uploads.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :completed ISO 8601 formatted dates are supported
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [InlineResponse20023]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List uploads
    # View for chunked uploads.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :completed ISO 8601 formatted dates are supported
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.list ...'
      end
      # resource path
      local_var_path = '/pulp/api/v3/uploads/'

      # query parameters
      query_params = {}
      query_params[:'completed'] = opts[:'completed'] if !opts[:'completed'].nil?
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
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UploadsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Inspect an upload
    # View for chunked uploads.
    # @param upload_href URI of Upload. e.g.: /pulp/api/v3/uploads/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [UploadDetail]
    def read(upload_href, opts = {})
      data, _status_code, _headers = read_with_http_info(upload_href, opts)
      data
    end

    # Inspect an upload
    # View for chunked uploads.
    # @param upload_href URI of Upload. e.g.: /pulp/api/v3/uploads/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(UploadDetail, Fixnum, Hash)>] UploadDetail data, response status code and response headers
    def read_with_http_info(upload_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.read ...'
      end
      # verify the required parameter 'upload_href' is set
      if @api_client.config.client_side_validation && upload_href.nil?
        fail ArgumentError, "Missing the required parameter 'upload_href' when calling UploadsApi.read"
      end
      # resource path
      local_var_path = '{upload_href}'.sub('{' + 'upload_href' + '}', upload_href.to_s)

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
        :return_type => 'UploadDetail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UploadsApi#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Upload a file chunk
    # Upload a chunk for an upload.
    # @param upload_href URI of Upload. e.g.: /pulp/api/v3/uploads/1/
    # @param file A chunk of the uploaded file.
    # @param content_range The Content-Range header specifies the location of the file chunk within the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sha256 The SHA-256 checksum of the chunk if available.
    # @return [Upload]
    def update(upload_href, file, content_range, opts = {})
      data, _status_code, _headers = update_with_http_info(upload_href, file, content_range, opts)
      data
    end

    # Upload a file chunk
    # Upload a chunk for an upload.
    # @param upload_href URI of Upload. e.g.: /pulp/api/v3/uploads/1/
    # @param file A chunk of the uploaded file.
    # @param content_range The Content-Range header specifies the location of the file chunk within the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sha256 The SHA-256 checksum of the chunk if available.
    # @return [Array<(Upload, Fixnum, Hash)>] Upload data, response status code and response headers
    def update_with_http_info(upload_href, file, content_range, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.update ...'
      end
      # verify the required parameter 'upload_href' is set
      if @api_client.config.client_side_validation && upload_href.nil?
        fail ArgumentError, "Missing the required parameter 'upload_href' when calling UploadsApi.update"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling UploadsApi.update"
      end
      # verify the required parameter 'content_range' is set
      if @api_client.config.client_side_validation && content_range.nil?
        fail ArgumentError, "Missing the required parameter 'content_range' when calling UploadsApi.update"
      end
      if @api_client.config.client_side_validation && content_range !~ Regexp.new(/^bytes (\\d+)-(\\d+)\/(\\d+|[*])$/)
        fail ArgumentError, "invalid value for 'content_range' when calling UploadsApi.update, must conform to the pattern /^bytes (\\d+)-(\\d+)\/(\\d+|[*])$/."
      end

      if @api_client.config.client_side_validation && !opts[:'sha256'].nil? && opts[:'sha256'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"sha256"]" when calling UploadsApi.update, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '{upload_href}'.sub('{' + 'upload_href' + '}', upload_href.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/x-www-form-urlencoded'])
      header_params[:'Content-Range'] = content_range

      # form parameters
      form_params = {}
      form_params['file'] = file
      form_params['sha256'] = opts[:'sha256'] if !opts[:'sha256'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Upload')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UploadsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
