# PulpRpmClient::RepositoriesFileApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RepositoriesFileApi.md#create) | **POST** /pulp/api/v3/repositories/file/file/ | Create a file repository
[**delete**](RepositoriesFileApi.md#delete) | **DELETE** {file_repository_href} | Delete a file repository
[**list**](RepositoriesFileApi.md#list) | **GET** /pulp/api/v3/repositories/file/file/ | List file repositorys
[**modify**](RepositoriesFileApi.md#modify) | **POST** {file_repository_href}modify/ | 
[**partial_update**](RepositoriesFileApi.md#partial_update) | **PATCH** {file_repository_href} | Partially update a file repository
[**read**](RepositoriesFileApi.md#read) | **GET** {file_repository_href} | Inspect a file repository
[**sync**](RepositoriesFileApi.md#sync) | **POST** {file_repository_href}sync/ | 
[**update**](RepositoriesFileApi.md#update) | **PUT** {file_repository_href} | Update a file repository


# **create**
> FileFileRepository create(data)

Create a file repository

 FileRepository represents a single file repository, to which content can be synced, added, or removed.

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

api_instance = PulpRpmClient::RepositoriesFileApi.new

data = PulpRpmClient::FileFileRepository.new # FileFileRepository | 


begin
  #Create a file repository
  result = api_instance.create(data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesFileApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**FileFileRepository**](FileFileRepository.md)|  | 

### Return type

[**FileFileRepository**](FileFileRepository.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> AsyncOperationResponse delete(file_repository_href, )

Delete a file repository

Trigger an asynchronous task to delete a repository.

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

api_instance = PulpRpmClient::RepositoriesFileApi.new

file_repository_href = 'file_repository_href_example' # String | URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/


begin
  #Delete a file repository
  result = api_instance.delete(file_repository_href, )
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesFileApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_repository_href** | **String**| URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/ | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20019 list(opts)

List file repositorys

 FileRepository represents a single file repository, to which content can be synced, added, or removed.

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

api_instance = PulpRpmClient::RepositoriesFileApi.new

opts = { 
  name: 'name_example', # String | 
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List file repositorys
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesFileApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **name__in** | **String**| Filter results where name is in a comma-separated list of values | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify**
> AsyncOperationResponse modify(file_repository_href, data)



Trigger an asynchronous task to create a new repository version.

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

api_instance = PulpRpmClient::RepositoriesFileApi.new

file_repository_href = 'file_repository_href_example' # String | URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/

data = PulpRpmClient::RepositoryAddRemoveContent.new # RepositoryAddRemoveContent | 


begin
  result = api_instance.modify(file_repository_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesFileApi->modify: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_repository_href** | **String**| URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/ | 
 **data** | [**RepositoryAddRemoveContent**](RepositoryAddRemoveContent.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **partial_update**
> FileFileRepository partial_update(file_repository_href, data)

Partially update a file repository

 FileRepository represents a single file repository, to which content can be synced, added, or removed.

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

api_instance = PulpRpmClient::RepositoriesFileApi.new

file_repository_href = 'file_repository_href_example' # String | URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/

data = PulpRpmClient::FileFileRepository.new # FileFileRepository | 


begin
  #Partially update a file repository
  result = api_instance.partial_update(file_repository_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesFileApi->partial_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_repository_href** | **String**| URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/ | 
 **data** | [**FileFileRepository**](FileFileRepository.md)|  | 

### Return type

[**FileFileRepository**](FileFileRepository.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> FileFileRepository read(file_repository_href, , opts)

Inspect a file repository

 FileRepository represents a single file repository, to which content can be synced, added, or removed.

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

api_instance = PulpRpmClient::RepositoriesFileApi.new

file_repository_href = 'file_repository_href_example' # String | URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a file repository
  result = api_instance.read(file_repository_href, , opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesFileApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_repository_href** | **String**| URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**FileFileRepository**](FileFileRepository.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sync**
> AsyncOperationResponse sync(file_repository_href, data)



Trigger an asynchronous task to sync file content.

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

api_instance = PulpRpmClient::RepositoriesFileApi.new

file_repository_href = 'file_repository_href_example' # String | URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/

data = PulpRpmClient::RepositorySyncURL.new # RepositorySyncURL | 


begin
  result = api_instance.sync(file_repository_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesFileApi->sync: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_repository_href** | **String**| URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/ | 
 **data** | [**RepositorySyncURL**](RepositorySyncURL.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> AsyncOperationResponse update(file_repository_href, data)

Update a file repository

Trigger an asynchronous task to update a repository.

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

api_instance = PulpRpmClient::RepositoriesFileApi.new

file_repository_href = 'file_repository_href_example' # String | URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/

data = PulpRpmClient::FileFileRepository.new # FileFileRepository | 


begin
  #Update a file repository
  result = api_instance.update(file_repository_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesFileApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_repository_href** | **String**| URI of File Repository. e.g.: /pulp/api/v3/repositories/file/file/1/ | 
 **data** | [**FileFileRepository**](FileFileRepository.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



