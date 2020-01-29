# SwaggerClient::ContentPackagesApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContentPackagesApi.md#create) | **POST** /pulp/api/v3/content/rpm/packages/ | Create a package
[**list**](ContentPackagesApi.md#list) | **GET** /pulp/api/v3/content/rpm/packages/ | List packages
[**read**](ContentPackagesApi.md#read) | **GET** {package_href} | Inspect a package


# **create**
> AsyncOperationResponse create(relative_path, opts)

Create a package

Trigger an asynchronous task to create content,optionally create new repository version.

### Example
```ruby
# load the gem
require 'pulp_rpm_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggerClient::ContentPackagesApi.new

relative_path = 'relative_path_example' # String | Path where the artifact is located relative to distributions base_path

opts = { 
  artifact: 'artifact_example', # String | Artifact file representing the physical content
  file: File.new('/path/to/file.txt'), # File | An uploaded file that should be turned into the artifact of the content unit.
  repository: 'repository_example' # String | A URI of a repository the new content unit should be associated with.
}

begin
  #Create a package
  result = api_instance.create(relative_path, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPackagesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relative_path** | **String**| Path where the artifact is located relative to distributions base_path | 
 **artifact** | **String**| Artifact file representing the physical content | [optional] 
 **file** | **File**| An uploaded file that should be turned into the artifact of the content unit. | [optional] 
 **repository** | **String**| A URI of a repository the new content unit should be associated with. | [optional] 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: application/json



# **list**
> InlineResponse20010 list(opts)

List packages

Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/packages/  Also specify queryset and serializer for Package.

### Example
```ruby
# load the gem
require 'pulp_rpm_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggerClient::ContentPackagesApi.new

opts = { 
  name: 'name_example', # String | Filter results where name matches value
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  epoch: 'epoch_example', # String | Filter results where epoch matches value
  epoch__in: 'epoch__in_example', # String | Filter results where epoch is in a comma-separated list of values
  version: 'version_example', # String | Filter results where version matches value
  version__in: 'version__in_example', # String | Filter results where version is in a comma-separated list of values
  release: 'release_example', # String | Filter results where release matches value
  release__in: 'release__in_example', # String | Filter results where release is in a comma-separated list of values
  arch: 'arch_example', # String | Filter results where arch matches value
  arch__in: 'arch__in_example', # String | Filter results where arch is in a comma-separated list of values
  pkg_id: 'pkg_id_example', # String | Filter results where pkgId matches value
  pkg_id__in: 'pkg_id__in_example', # String | Filter results where pkgId is in a comma-separated list of values
  checksum_type: 'checksum_type_example', # String | Filter results where checksum_type matches value
  checksum_type__in: 'checksum_type__in_example', # String | Filter results where checksum_type is in a comma-separated list of values
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List packages
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPackagesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filter results where name matches value | [optional] 
 **name__in** | **String**| Filter results where name is in a comma-separated list of values | [optional] 
 **epoch** | **String**| Filter results where epoch matches value | [optional] 
 **epoch__in** | **String**| Filter results where epoch is in a comma-separated list of values | [optional] 
 **version** | **String**| Filter results where version matches value | [optional] 
 **version__in** | **String**| Filter results where version is in a comma-separated list of values | [optional] 
 **release** | **String**| Filter results where release matches value | [optional] 
 **release__in** | **String**| Filter results where release is in a comma-separated list of values | [optional] 
 **arch** | **String**| Filter results where arch matches value | [optional] 
 **arch__in** | **String**| Filter results where arch is in a comma-separated list of values | [optional] 
 **pkg_id** | **String**| Filter results where pkgId matches value | [optional] 
 **pkg_id__in** | **String**| Filter results where pkgId is in a comma-separated list of values | [optional] 
 **checksum_type** | **String**| Filter results where checksum_type matches value | [optional] 
 **checksum_type__in** | **String**| Filter results where checksum_type is in a comma-separated list of values | [optional] 
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmPackage read(package_href, opts)

Inspect a package

Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/packages/  Also specify queryset and serializer for Package.

### Example
```ruby
# load the gem
require 'pulp_rpm_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggerClient::ContentPackagesApi.new

package_href = 'package_href_example' # String | URI of Package. e.g.: /pulp/api/v3/content/rpm/packages/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a package
  result = api_instance.read(package_href, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPackagesApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_href** | **String**| URI of Package. e.g.: /pulp/api/v3/content/rpm/packages/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmPackage**](RpmPackage.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



