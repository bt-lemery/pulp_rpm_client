# PulpRpmClient::ContentRepoMetadataFilesApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](ContentRepoMetadataFilesApi.md#delete) | **DELETE** {repo_metadata_file_href} | Delete a repo metadata file
[**list**](ContentRepoMetadataFilesApi.md#list) | **GET** /pulp/api/v3/content/rpm/repo_metadata_files/ | List repo metadata files
[**read**](ContentRepoMetadataFilesApi.md#read) | **GET** {repo_metadata_file_href} | Inspect a repo metadata file


# **delete**
> delete(repo_metadata_file_href)

Delete a repo metadata file

RepoMetadataFile Viewset.

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

api_instance = PulpRpmClient::ContentRepoMetadataFilesApi.new

repo_metadata_file_href = 'repo_metadata_file_href_example' # String | URI of Repo Metadata File. e.g.: /pulp/api/v3/content/rpm/repo_metadata_files/1/


begin
  #Delete a repo metadata file
  api_instance.delete(repo_metadata_file_href)
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentRepoMetadataFilesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_metadata_file_href** | **String**| URI of Repo Metadata File. e.g.: /pulp/api/v3/content/rpm/repo_metadata_files/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20011 list(opts)

List repo metadata files

RepoMetadataFile Viewset.

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

api_instance = PulpRpmClient::ContentRepoMetadataFilesApi.new

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
  #List repo metadata files
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentRepoMetadataFilesApi->list: #{e}"
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

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmRepoMetadataFile read(repo_metadata_file_href, opts)

Inspect a repo metadata file

RepoMetadataFile Viewset.

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

api_instance = PulpRpmClient::ContentRepoMetadataFilesApi.new

repo_metadata_file_href = 'repo_metadata_file_href_example' # String | URI of Repo Metadata File. e.g.: /pulp/api/v3/content/rpm/repo_metadata_files/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a repo metadata file
  result = api_instance.read(repo_metadata_file_href, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentRepoMetadataFilesApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_metadata_file_href** | **String**| URI of Repo Metadata File. e.g.: /pulp/api/v3/content/rpm/repo_metadata_files/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmRepoMetadataFile**](RpmRepoMetadataFile.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



