# SwaggerClient::ContentFilesApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContentFilesApi.md#create) | **POST** /pulp/api/v3/content/file/files/ | Create a file content
[**list**](ContentFilesApi.md#list) | **GET** /pulp/api/v3/content/file/files/ | List file contents
[**read**](ContentFilesApi.md#read) | **GET** {file_content_href} | Inspect a file content


# **create**
> AsyncOperationResponse create(relative_path, opts)

Create a file content

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

api_instance = SwaggerClient::ContentFilesApi.new

relative_path = 'relative_path_example' # String | Path where the artifact is located relative to distributions base_path

opts = { 
  artifact: 'artifact_example', # String | Artifact file representing the physical content
  file: File.new('/path/to/file.txt'), # File | An uploaded file that should be turned into the artifact of the content unit.
  repository: 'repository_example' # String | A URI of a repository the new content unit should be associated with.
}

begin
  #Create a file content
  result = api_instance.create(relative_path, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentFilesApi->create: #{e}"
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
> InlineResponse2001 list(opts)

List file contents

 FileContent represents a single file and its metadata, which can be added and removed from repositories.

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

api_instance = SwaggerClient::ContentFilesApi.new

opts = { 
  relative_path: 'relative_path_example', # String | Filter results where relative_path matches value
  digest: 'digest_example', # String | Filter results where digest matches value
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List file contents
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentFilesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relative_path** | **String**| Filter results where relative_path matches value | [optional] 
 **digest** | **String**| Filter results where digest matches value | [optional] 
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> FileFileContent read(file_content_href, opts)

Inspect a file content

 FileContent represents a single file and its metadata, which can be added and removed from repositories.

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

api_instance = SwaggerClient::ContentFilesApi.new

file_content_href = 'file_content_href_example' # String | URI of File Content. e.g.: /pulp/api/v3/content/file/files/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a file content
  result = api_instance.read(file_content_href, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentFilesApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_content_href** | **String**| URI of File Content. e.g.: /pulp/api/v3/content/file/files/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**FileFileContent**](FileFileContent.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



