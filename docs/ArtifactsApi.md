# SwaggerClient::ArtifactsApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ArtifactsApi.md#create) | **POST** /pulp/api/v3/artifacts/ | Create an artifact
[**delete**](ArtifactsApi.md#delete) | **DELETE** {artifact_href} | Delete an artifact
[**list**](ArtifactsApi.md#list) | **GET** /pulp/api/v3/artifacts/ | List artifacts
[**read**](ArtifactsApi.md#read) | **GET** {artifact_href} | Inspect an artifact


# **create**
> Artifact create(file, opts)

Create an artifact



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

api_instance = SwaggerClient::ArtifactsApi.new

file = File.new('/path/to/file.txt') # File | The stored file.

opts = { 
  size: 56, # Integer | The size of the file in bytes.
  md5: 'md5_example', # String | The MD5 checksum of the file if available.
  sha1: 'sha1_example', # String | The SHA-1 checksum of the file if available.
  sha224: 'sha224_example', # String | The SHA-224 checksum of the file if available.
  sha256: 'sha256_example', # String | The SHA-256 checksum of the file if available.
  sha384: 'sha384_example', # String | The SHA-384 checksum of the file if available.
  sha512: 'sha512_example' # String | The SHA-512 checksum of the file if available.
}

begin
  #Create an artifact
  result = api_instance.create(file, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArtifactsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| The stored file. | 
 **size** | **Integer**| The size of the file in bytes. | [optional] 
 **md5** | **String**| The MD5 checksum of the file if available. | [optional] 
 **sha1** | **String**| The SHA-1 checksum of the file if available. | [optional] 
 **sha224** | **String**| The SHA-224 checksum of the file if available. | [optional] 
 **sha256** | **String**| The SHA-256 checksum of the file if available. | [optional] 
 **sha384** | **String**| The SHA-384 checksum of the file if available. | [optional] 
 **sha512** | **String**| The SHA-512 checksum of the file if available. | [optional] 

### Return type

[**Artifact**](Artifact.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: application/json



# **delete**
> delete(artifact_href)

Delete an artifact

Remove Artifact only if it is not associated with any Content.

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

api_instance = SwaggerClient::ArtifactsApi.new

artifact_href = 'artifact_href_example' # String | URI of Artifact. e.g.: /pulp/api/v3/artifacts/1/


begin
  #Delete an artifact
  api_instance.delete(artifact_href)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArtifactsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artifact_href** | **String**| URI of Artifact. e.g.: /pulp/api/v3/artifacts/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse200 list(opts)

List artifacts



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

api_instance = SwaggerClient::ArtifactsApi.new

opts = { 
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  md5: 'md5_example', # String | Filter results where md5 matches value
  sha1: 'sha1_example', # String | Filter results where sha1 matches value
  sha224: 'sha224_example', # String | Filter results where sha224 matches value
  sha256: 'sha256_example', # String | Filter results where sha256 matches value
  sha384: 'sha384_example', # String | Filter results where sha384 matches value
  sha512: 'sha512_example', # String | Filter results where sha512 matches value
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List artifacts
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArtifactsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **md5** | **String**| Filter results where md5 matches value | [optional] 
 **sha1** | **String**| Filter results where sha1 matches value | [optional] 
 **sha224** | **String**| Filter results where sha224 matches value | [optional] 
 **sha256** | **String**| Filter results where sha256 matches value | [optional] 
 **sha384** | **String**| Filter results where sha384 matches value | [optional] 
 **sha512** | **String**| Filter results where sha512 matches value | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> Artifact read(artifact_href, opts)

Inspect an artifact



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

api_instance = SwaggerClient::ArtifactsApi.new

artifact_href = 'artifact_href_example' # String | URI of Artifact. e.g.: /pulp/api/v3/artifacts/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect an artifact
  result = api_instance.read(artifact_href, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArtifactsApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artifact_href** | **String**| URI of Artifact. e.g.: /pulp/api/v3/artifacts/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**Artifact**](Artifact.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



