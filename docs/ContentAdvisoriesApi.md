# SwaggerClient::ContentAdvisoriesApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContentAdvisoriesApi.md#create) | **POST** /pulp/api/v3/content/rpm/advisories/ | Create an update record
[**list**](ContentAdvisoriesApi.md#list) | **GET** /pulp/api/v3/content/rpm/advisories/ | List update records
[**read**](ContentAdvisoriesApi.md#read) | **GET** {update_record_href} | Inspect an update record


# **create**
> AsyncOperationResponse create(relative_path, opts)

Create an update record

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

api_instance = SwaggerClient::ContentAdvisoriesApi.new

relative_path = 'relative_path_example' # String | Path where the artifact is located relative to distributions base_path

opts = { 
  artifact: 'artifact_example', # String | Artifact file representing the physical content
  file: File.new('/path/to/file.txt'), # File | An uploaded file that should be turned into the artifact of the content unit.
  repository: 'repository_example' # String | A URI of a repository the new content unit should be associated with.
}

begin
  #Create an update record
  result = api_instance.create(relative_path, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentAdvisoriesApi->create: #{e}"
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
> InlineResponse2002 list(opts)

List update records

Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/advisories/  Also specify queryset and serializer for UpdateRecord.

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

api_instance = SwaggerClient::ContentAdvisoriesApi.new

opts = { 
  id: 'id_example', # String | Filter results where id matches value
  id__in: 'id__in_example', # String | Filter results where id is in a comma-separated list of values
  status: 'status_example', # String | Filter results where status matches value
  status__in: 'status__in_example', # String | Filter results where status is in a comma-separated list of values
  severity: 'severity_example', # String | Filter results where severity matches value
  severity__in: 'severity__in_example', # String | Filter results where severity is in a comma-separated list of values
  type: 'type_example', # String | Filter results where type matches value
  type__in: 'type__in_example', # String | Filter results where type is in a comma-separated list of values
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List update records
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentAdvisoriesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Filter results where id matches value | [optional] 
 **id__in** | **String**| Filter results where id is in a comma-separated list of values | [optional] 
 **status** | **String**| Filter results where status matches value | [optional] 
 **status__in** | **String**| Filter results where status is in a comma-separated list of values | [optional] 
 **severity** | **String**| Filter results where severity matches value | [optional] 
 **severity__in** | **String**| Filter results where severity is in a comma-separated list of values | [optional] 
 **type** | **String**| Filter results where type matches value | [optional] 
 **type__in** | **String**| Filter results where type is in a comma-separated list of values | [optional] 
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmUpdateRecord read(update_record_href, opts)

Inspect an update record

Define endpoint name which will appear in the API endpoint for this content type. For example::     http://pulp.example.com/pulp/api/v3/content/rpm/advisories/  Also specify queryset and serializer for UpdateRecord.

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

api_instance = SwaggerClient::ContentAdvisoriesApi.new

update_record_href = 'update_record_href_example' # String | URI of Update Record. e.g.: /pulp/api/v3/content/rpm/advisories/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect an update record
  result = api_instance.read(update_record_href, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentAdvisoriesApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_record_href** | **String**| URI of Update Record. e.g.: /pulp/api/v3/content/rpm/advisories/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmUpdateRecord**](RpmUpdateRecord.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



