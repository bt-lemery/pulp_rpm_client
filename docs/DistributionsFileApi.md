# PulpRpmClient::DistributionsFileApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DistributionsFileApi.md#create) | **POST** /pulp/api/v3/distributions/file/file/ | Create a file distribution
[**delete**](DistributionsFileApi.md#delete) | **DELETE** {file_distribution_href} | Delete a file distribution
[**list**](DistributionsFileApi.md#list) | **GET** /pulp/api/v3/distributions/file/file/ | List file distributions
[**partial_update**](DistributionsFileApi.md#partial_update) | **PATCH** {file_distribution_href} | Partially update a file distribution
[**read**](DistributionsFileApi.md#read) | **GET** {file_distribution_href} | Inspect a file distribution
[**update**](DistributionsFileApi.md#update) | **PUT** {file_distribution_href} | Update a file distribution


# **create**
> AsyncOperationResponse create(data)

Create a file distribution

Trigger an asynchronous create task

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

api_instance = PulpRpmClient::DistributionsFileApi.new

data = PulpRpmClient::FileFileDistribution.new # FileFileDistribution | 


begin
  #Create a file distribution
  result = api_instance.create(data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsFileApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**FileFileDistribution**](FileFileDistribution.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> AsyncOperationResponse delete(file_distribution_href, )

Delete a file distribution

Trigger an asynchronous delete task

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

api_instance = PulpRpmClient::DistributionsFileApi.new

file_distribution_href = 'file_distribution_href_example' # String | URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/


begin
  #Delete a file distribution
  result = api_instance.delete(file_distribution_href, )
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsFileApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_distribution_href** | **String**| URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/ | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20012 list(opts)

List file distributions

 FileDistributions host File Publications which makes the metadata and the referenced File Content available to HTTP clients. Additionally, a FileDistribution with an associated FilePublication can be the target url of a File Remote , allowing another instance of Pulp to sync the content.

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

api_instance = PulpRpmClient::DistributionsFileApi.new

opts = { 
  name: 'name_example', # String | 
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  base_path: 'base_path_example', # String | 
  base_path__contains: 'base_path__contains_example', # String | Filter results where base_path contains value
  base_path__icontains: 'base_path__icontains_example', # String | Filter results where base_path contains value
  base_path__in: 'base_path__in_example', # String | Filter results where base_path is in a comma-separated list of values
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List file distributions
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsFileApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **name__in** | **String**| Filter results where name is in a comma-separated list of values | [optional] 
 **base_path** | **String**|  | [optional] 
 **base_path__contains** | **String**| Filter results where base_path contains value | [optional] 
 **base_path__icontains** | **String**| Filter results where base_path contains value | [optional] 
 **base_path__in** | **String**| Filter results where base_path is in a comma-separated list of values | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **partial_update**
> AsyncOperationResponse partial_update(file_distribution_href, data)

Partially update a file distribution

Trigger an asynchronous partial update task

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

api_instance = PulpRpmClient::DistributionsFileApi.new

file_distribution_href = 'file_distribution_href_example' # String | URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/

data = PulpRpmClient::FileFileDistribution.new # FileFileDistribution | 


begin
  #Partially update a file distribution
  result = api_instance.partial_update(file_distribution_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsFileApi->partial_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_distribution_href** | **String**| URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/ | 
 **data** | [**FileFileDistribution**](FileFileDistribution.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> FileFileDistribution read(file_distribution_href, , opts)

Inspect a file distribution

 FileDistributions host File Publications which makes the metadata and the referenced File Content available to HTTP clients. Additionally, a FileDistribution with an associated FilePublication can be the target url of a File Remote , allowing another instance of Pulp to sync the content.

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

api_instance = PulpRpmClient::DistributionsFileApi.new

file_distribution_href = 'file_distribution_href_example' # String | URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a file distribution
  result = api_instance.read(file_distribution_href, , opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsFileApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_distribution_href** | **String**| URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**FileFileDistribution**](FileFileDistribution.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> AsyncOperationResponse update(file_distribution_href, data)

Update a file distribution

Trigger an asynchronous update task

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

api_instance = PulpRpmClient::DistributionsFileApi.new

file_distribution_href = 'file_distribution_href_example' # String | URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/

data = PulpRpmClient::FileFileDistribution.new # FileFileDistribution | 


begin
  #Update a file distribution
  result = api_instance.update(file_distribution_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsFileApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_distribution_href** | **String**| URI of File Distribution. e.g.: /pulp/api/v3/distributions/file/file/1/ | 
 **data** | [**FileFileDistribution**](FileFileDistribution.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



