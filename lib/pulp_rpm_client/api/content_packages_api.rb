=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module SwaggerClient
  class ContentPackagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a package
    # Trigger an asynchronous task to create content,optionally create new repository version.
    # @param relative_path Path where the artifact is located relative to distributions base_path
    # @param [Hash] opts the optional parameters
    # @option opts [String] :artifact Artifact file representing the physical content
    # @option opts [File] :file An uploaded file that should be turned into the artifact of the content unit.
    # @option opts [String] :repository A URI of a repository the new content unit should be associated with.
    # @return [AsyncOperationResponse]
    def create(relative_path, opts = {})
      data, _status_code, _headers = create_with_http_info(relative_path, opts)
      data
    end

    # Create a package
    # Trigger an asynchronous task to create content,optionally create new repository version.
    # @param relative_path Path where the artifact is located relative to distributions base_path
    # @param [Hash] opts the optional parameters
    # @option opts [String] :artifact Artifact file representing the physical content
    # @option opts [File] :file An uploaded file that should be turned into the artifact of the content unit.
    # @option opts [String] :repository A URI of a repository the new content unit should be associated with.
    # @return [Array<(AsyncOperationResponse, Fixnum, Hash)>] AsyncOperationResponse data, response status code and response headers
    def create_with_http_info(relative_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentPackagesApi.create ...'
      end
      # verify the required parameter 'relative_path' is set
      if @api_client.config.client_side_validation && relative_path.nil?
        fail ArgumentError, "Missing the required parameter 'relative_path' when calling ContentPackagesApi.create"
      end
      if @api_client.config.client_side_validation && relative_path.to_s.length < 1
        fail ArgumentError, 'invalid value for "relative_path" when calling ContentPackagesApi.create, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/pulp/api/v3/content/rpm/packages/'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params['relative_path'] = relative_path
      form_params['artifact'] = opts[:'artifact'] if !opts[:'artifact'].nil?
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?
      form_params['repository'] = opts[:'repository'] if !opts[:'repository'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncOperationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPackagesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List packages
    # Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/packages/  Also specify queryset and serializer for Package.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Filter results where name matches value
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [String] :epoch Filter results where epoch matches value
    # @option opts [String] :epoch__in Filter results where epoch is in a comma-separated list of values
    # @option opts [String] :version Filter results where version matches value
    # @option opts [String] :version__in Filter results where version is in a comma-separated list of values
    # @option opts [String] :release Filter results where release matches value
    # @option opts [String] :release__in Filter results where release is in a comma-separated list of values
    # @option opts [String] :arch Filter results where arch matches value
    # @option opts [String] :arch__in Filter results where arch is in a comma-separated list of values
    # @option opts [String] :pkg_id Filter results where pkgId matches value
    # @option opts [String] :pkg_id__in Filter results where pkgId is in a comma-separated list of values
    # @option opts [String] :checksum_type Filter results where checksum_type matches value
    # @option opts [String] :checksum_type__in Filter results where checksum_type is in a comma-separated list of values
    # @option opts [String] :repository_version Repository Version referenced by HREF
    # @option opts [String] :repository_version_added Repository Version referenced by HREF
    # @option opts [String] :repository_version_removed Repository Version referenced by HREF
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [InlineResponse20010]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List packages
    # Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/packages/  Also specify queryset and serializer for Package.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Filter results where name matches value
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [String] :epoch Filter results where epoch matches value
    # @option opts [String] :epoch__in Filter results where epoch is in a comma-separated list of values
    # @option opts [String] :version Filter results where version matches value
    # @option opts [String] :version__in Filter results where version is in a comma-separated list of values
    # @option opts [String] :release Filter results where release matches value
    # @option opts [String] :release__in Filter results where release is in a comma-separated list of values
    # @option opts [String] :arch Filter results where arch matches value
    # @option opts [String] :arch__in Filter results where arch is in a comma-separated list of values
    # @option opts [String] :pkg_id Filter results where pkgId matches value
    # @option opts [String] :pkg_id__in Filter results where pkgId is in a comma-separated list of values
    # @option opts [String] :checksum_type Filter results where checksum_type matches value
    # @option opts [String] :checksum_type__in Filter results where checksum_type is in a comma-separated list of values
    # @option opts [String] :repository_version Repository Version referenced by HREF
    # @option opts [String] :repository_version_added Repository Version referenced by HREF
    # @option opts [String] :repository_version_removed Repository Version referenced by HREF
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(InlineResponse20010, Fixnum, Hash)>] InlineResponse20010 data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentPackagesApi.list ...'
      end
      # resource path
      local_var_path = '/pulp/api/v3/content/rpm/packages/'

      # query parameters
      query_params = {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'name__in'] = opts[:'name__in'] if !opts[:'name__in'].nil?
      query_params[:'epoch'] = opts[:'epoch'] if !opts[:'epoch'].nil?
      query_params[:'epoch__in'] = opts[:'epoch__in'] if !opts[:'epoch__in'].nil?
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?
      query_params[:'version__in'] = opts[:'version__in'] if !opts[:'version__in'].nil?
      query_params[:'release'] = opts[:'release'] if !opts[:'release'].nil?
      query_params[:'release__in'] = opts[:'release__in'] if !opts[:'release__in'].nil?
      query_params[:'arch'] = opts[:'arch'] if !opts[:'arch'].nil?
      query_params[:'arch__in'] = opts[:'arch__in'] if !opts[:'arch__in'].nil?
      query_params[:'pkgId'] = opts[:'pkg_id'] if !opts[:'pkg_id'].nil?
      query_params[:'pkgId__in'] = opts[:'pkg_id__in'] if !opts[:'pkg_id__in'].nil?
      query_params[:'checksum_type'] = opts[:'checksum_type'] if !opts[:'checksum_type'].nil?
      query_params[:'checksum_type__in'] = opts[:'checksum_type__in'] if !opts[:'checksum_type__in'].nil?
      query_params[:'repository_version'] = opts[:'repository_version'] if !opts[:'repository_version'].nil?
      query_params[:'repository_version_added'] = opts[:'repository_version_added'] if !opts[:'repository_version_added'].nil?
      query_params[:'repository_version_removed'] = opts[:'repository_version_removed'] if !opts[:'repository_version_removed'].nil?
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
        :return_type => 'InlineResponse20010')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPackagesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Inspect a package
    # Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/packages/  Also specify queryset and serializer for Package.
    # @param package_href URI of Package. e.g.: /pulp/api/v3/content/rpm/packages/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [RpmPackage]
    def read(package_href, opts = {})
      data, _status_code, _headers = read_with_http_info(package_href, opts)
      data
    end

    # Inspect a package
    # Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/packages/  Also specify queryset and serializer for Package.
    # @param package_href URI of Package. e.g.: /pulp/api/v3/content/rpm/packages/1/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields A list of fields to include in the response.
    # @option opts [String] :exclude_fields A list of fields to exclude from the response.
    # @return [Array<(RpmPackage, Fixnum, Hash)>] RpmPackage data, response status code and response headers
    def read_with_http_info(package_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentPackagesApi.read ...'
      end
      # verify the required parameter 'package_href' is set
      if @api_client.config.client_side_validation && package_href.nil?
        fail ArgumentError, "Missing the required parameter 'package_href' when calling ContentPackagesApi.read"
      end
      # resource path
      local_var_path = '{package_href}'.sub('{' + 'package_href' + '}', package_href.to_s)

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
        :return_type => 'RpmPackage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPackagesApi#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end