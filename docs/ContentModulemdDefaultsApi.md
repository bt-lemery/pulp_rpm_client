# SwaggerClient::ContentModulemdDefaultsApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContentModulemdDefaultsApi.md#create) | **POST** /pulp/api/v3/content/rpm/modulemd_defaults/ | Create a modulemd defaults
[**list**](ContentModulemdDefaultsApi.md#list) | **GET** /pulp/api/v3/content/rpm/modulemd_defaults/ | List modulemd defaultss
[**read**](ContentModulemdDefaultsApi.md#read) | **GET** {modulemd_defaults_href} | Inspect a modulemd defaults


# **create**
> AsyncOperationResponse create(relative_path, _module, stream, profiles, opts)

Create a modulemd defaults

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

api_instance = SwaggerClient::ContentModulemdDefaultsApi.new

relative_path = 'relative_path_example' # String | Path where the artifact is located relative to distributions base_path

_module = '_module_example' # String | Modulemd name.

stream = 'stream_example' # String | Modulemd default stream.

profiles = 'profiles_example' # String | Default profiles for modulemd streams.

opts = { 
  artifact: 'artifact_example', # String | Artifact file representing the physical content
  file: File.new('/path/to/file.txt'), # File | An uploaded file that should be turned into the artifact of the content unit.
  repository: 'repository_example' # String | A URI of a repository the new content unit should be associated with.
}

begin
  #Create a modulemd defaults
  result = api_instance.create(relative_path, _module, stream, profiles, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentModulemdDefaultsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relative_path** | **String**| Path where the artifact is located relative to distributions base_path | 
 **_module** | **String**| Modulemd name. | 
 **stream** | **String**| Modulemd default stream. | 
 **profiles** | **String**| Default profiles for modulemd streams. | 
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
> InlineResponse2004 list(opts)

List modulemd defaultss

ViewSet for Modulemd.

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

api_instance = SwaggerClient::ContentModulemdDefaultsApi.new

opts = { 
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List modulemd defaultss
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentModulemdDefaultsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmModulemdDefaults read(modulemd_defaults_href, opts)

Inspect a modulemd defaults

ViewSet for Modulemd.

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

api_instance = SwaggerClient::ContentModulemdDefaultsApi.new

modulemd_defaults_href = 'modulemd_defaults_href_example' # String | URI of Modulemd Defaults. e.g.: /pulp/api/v3/content/rpm/modulemd_defaults/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a modulemd defaults
  result = api_instance.read(modulemd_defaults_href, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentModulemdDefaultsApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modulemd_defaults_href** | **String**| URI of Modulemd Defaults. e.g.: /pulp/api/v3/content/rpm/modulemd_defaults/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmModulemdDefaults**](RpmModulemdDefaults.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



