# PulpRpmClient::RepositoriesRpmVersionsApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](RepositoriesRpmVersionsApi.md#delete) | **DELETE** {rpm_repository_version_href} | Delete a repository version
[**list**](RepositoriesRpmVersionsApi.md#list) | **GET** {rpm_repository_href}versions/ | List repository versions
[**read**](RepositoriesRpmVersionsApi.md#read) | **GET** {rpm_repository_version_href} | Inspect a repository version


# **delete**
> AsyncOperationResponse delete(rpm_repository_version_href)

Delete a repository version

Trigger an asynchronous task to delete a repositroy version.

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

api_instance = PulpRpmClient::RepositoriesRpmVersionsApi.new

rpm_repository_version_href = 'rpm_repository_version_href_example' # String | URI of Repository Version. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/versions/1/


begin
  #Delete a repository version
  result = api_instance.delete(rpm_repository_version_href)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmVersionsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_repository_version_href** | **String**| URI of Repository Version. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/versions/1/ | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20020 list(rpm_repository_href, opts)

List repository versions

RpmRepositoryVersion represents a single rpm repository version.

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

api_instance = PulpRpmClient::RepositoriesRpmVersionsApi.new

rpm_repository_href = 'rpm_repository_href_example' # String | URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/

opts = { 
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  number: 8.14, # Float | 
  number__lt: 8.14, # Float | Filter results where number is less than value
  number__lte: 8.14, # Float | Filter results where number is less than or equal to value
  number__gt: 8.14, # Float | Filter results where number is greater than value
  number__gte: 8.14, # Float | Filter results where number is greater than or equal to value
  number__range: 8.14, # Float | Filter results where number is between two comma separated values
  pulp_created__lt: 'pulp_created__lt_example', # String | Filter results where pulp_created is less than value
  pulp_created__lte: 'pulp_created__lte_example', # String | Filter results where pulp_created is less than or equal to value
  pulp_created__gt: 'pulp_created__gt_example', # String | Filter results where pulp_created is greater than value
  pulp_created__gte: 'pulp_created__gte_example', # String | Filter results where pulp_created is greater than or equal to value
  pulp_created__range: 'pulp_created__range_example', # String | Filter results where pulp_created is between two comma separated values
  content: 'content_example', # String | Content Unit referenced by HREF
  pulp_created: 'pulp_created_example', # String | ISO 8601 formatted dates are supported
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List repository versions
  result = api_instance.list(rpm_repository_href, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmVersionsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_repository_href** | **String**| URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/ | 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **number** | **Float**|  | [optional] 
 **number__lt** | **Float**| Filter results where number is less than value | [optional] 
 **number__lte** | **Float**| Filter results where number is less than or equal to value | [optional] 
 **number__gt** | **Float**| Filter results where number is greater than value | [optional] 
 **number__gte** | **Float**| Filter results where number is greater than or equal to value | [optional] 
 **number__range** | **Float**| Filter results where number is between two comma separated values | [optional] 
 **pulp_created__lt** | **String**| Filter results where pulp_created is less than value | [optional] 
 **pulp_created__lte** | **String**| Filter results where pulp_created is less than or equal to value | [optional] 
 **pulp_created__gt** | **String**| Filter results where pulp_created is greater than value | [optional] 
 **pulp_created__gte** | **String**| Filter results where pulp_created is greater than or equal to value | [optional] 
 **pulp_created__range** | **String**| Filter results where pulp_created is between two comma separated values | [optional] 
 **content** | **String**| Content Unit referenced by HREF | [optional] 
 **pulp_created** | **String**| ISO 8601 formatted dates are supported | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RepositoryVersion read(rpm_repository_version_href, opts)

Inspect a repository version

RpmRepositoryVersion represents a single rpm repository version.

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

api_instance = PulpRpmClient::RepositoriesRpmVersionsApi.new

rpm_repository_version_href = 'rpm_repository_version_href_example' # String | URI of Repository Version. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/versions/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a repository version
  result = api_instance.read(rpm_repository_version_href, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmVersionsApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_repository_version_href** | **String**| URI of Repository Version. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/versions/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RepositoryVersion**](RepositoryVersion.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



