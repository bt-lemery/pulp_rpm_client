# PulpRpmClient::ContentModulemdsApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContentModulemdsApi.md#create) | **POST** /pulp/api/v3/content/rpm/modulemds/ | Create a modulemd
[**list**](ContentModulemdsApi.md#list) | **GET** /pulp/api/v3/content/rpm/modulemds/ | List modulemds
[**read**](ContentModulemdsApi.md#read) | **GET** {modulemd_href} | Inspect a modulemd


# **create**
> AsyncOperationResponse create(relative_path, name, stream, version, context, arch, artifacts, dependencies, opts)

Create a modulemd

Trigger an asynchronous task to create content,optionally create new repository version.

### Example
```ruby
# load the gem
require 'pulp_rpm_client'
# setup authorization
PulpRpmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpRpmClient::ContentModulemdsApi.new

relative_path = 'relative_path_example' # String | Path where the artifact is located relative to distributions base_path

name = 'name_example' # String | Modulemd name.

stream = 'stream_example' # String | Stream name.

version = 'version_example' # String | Modulemd version.

context = 'context_example' # String | Modulemd context.

arch = 'arch_example' # String | Modulemd architecture.

artifacts = 'artifacts_example' # String | Modulemd artifacts.

dependencies = 'dependencies_example' # String | Modulemd dependencies.

opts = { 
  artifact: 'artifact_example', # String | Artifact file representing the physical content
  file: File.new('/path/to/file.txt'), # File | An uploaded file that should be turned into the artifact of the content unit.
  repository: 'repository_example', # String | A URI of a repository the new content unit should be associated with.
  packages: ['packages_example'] # Array<String> | Modulemd artifacts' packages.
}

begin
  #Create a modulemd
  result = api_instance.create(relative_path, name, stream, version, context, arch, artifacts, dependencies, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentModulemdsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relative_path** | **String**| Path where the artifact is located relative to distributions base_path | 
 **name** | **String**| Modulemd name. | 
 **stream** | **String**| Stream name. | 
 **version** | **String**| Modulemd version. | 
 **context** | **String**| Modulemd context. | 
 **arch** | **String**| Modulemd architecture. | 
 **artifacts** | **String**| Modulemd artifacts. | 
 **dependencies** | **String**| Modulemd dependencies. | 
 **artifact** | **String**| Artifact file representing the physical content | [optional] 
 **file** | **File**| An uploaded file that should be turned into the artifact of the content unit. | [optional] 
 **repository** | **String**| A URI of a repository the new content unit should be associated with. | [optional] 
 **packages** | [**Array&lt;String&gt;**](String.md)| Modulemd artifacts&#39; packages. | [optional] 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: application/json



# **list**
> InlineResponse2005 list(opts)

List modulemds

ViewSet for Modulemd.

### Example
```ruby
# load the gem
require 'pulp_rpm_client'
# setup authorization
PulpRpmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpRpmClient::ContentModulemdsApi.new

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
  #List modulemds
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentModulemdsApi->list: #{e}"
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

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmModulemd read(modulemd_href, opts)

Inspect a modulemd

ViewSet for Modulemd.

### Example
```ruby
# load the gem
require 'pulp_rpm_client'
# setup authorization
PulpRpmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpRpmClient::ContentModulemdsApi.new

modulemd_href = 'modulemd_href_example' # String | URI of Modulemd. e.g.: /pulp/api/v3/content/rpm/modulemds/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a modulemd
  result = api_instance.read(modulemd_href, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentModulemdsApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modulemd_href** | **String**| URI of Modulemd. e.g.: /pulp/api/v3/content/rpm/modulemds/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmModulemd**](RpmModulemd.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



