# PulpRpmClient::RepositoriesRpmApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RepositoriesRpmApi.md#create) | **POST** /pulp/api/v3/repositories/rpm/rpm/ | Create a rpm repository
[**delete**](RepositoriesRpmApi.md#delete) | **DELETE** {rpm_repository_href} | Delete a rpm repository
[**list**](RepositoriesRpmApi.md#list) | **GET** /pulp/api/v3/repositories/rpm/rpm/ | List rpm repositorys
[**modify**](RepositoriesRpmApi.md#modify) | **POST** {rpm_repository_href}modify/ | 
[**partial_update**](RepositoriesRpmApi.md#partial_update) | **PATCH** {rpm_repository_href} | Partially update a rpm repository
[**read**](RepositoriesRpmApi.md#read) | **GET** {rpm_repository_href} | Inspect a rpm repository
[**sync**](RepositoriesRpmApi.md#sync) | **POST** {rpm_repository_href}sync/ | Sync from remote
[**update**](RepositoriesRpmApi.md#update) | **PUT** {rpm_repository_href} | Update a rpm repository


# **create**
> RpmRpmRepository create(data)

Create a rpm repository

A ViewSet for RpmRepository.

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

api_instance = PulpRpmClient::RepositoriesRpmApi.new

data = PulpRpmClient::RpmRpmRepository.new # RpmRpmRepository | 


begin
  #Create a rpm repository
  result = api_instance.create(data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**RpmRpmRepository**](RpmRpmRepository.md)|  | 

### Return type

[**RpmRpmRepository**](RpmRpmRepository.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> AsyncOperationResponse delete(rpm_repository_href, )

Delete a rpm repository

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

api_instance = PulpRpmClient::RepositoriesRpmApi.new

rpm_repository_href = 'rpm_repository_href_example' # String | URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/


begin
  #Delete a rpm repository
  result = api_instance.delete(rpm_repository_href, )
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_repository_href** | **String**| URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/ | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20021 list(opts)

List rpm repositorys

A ViewSet for RpmRepository.

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

api_instance = PulpRpmClient::RepositoriesRpmApi.new

opts = { 
  name: 'name_example', # String | 
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List rpm repositorys
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmApi->list: #{e}"
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

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify**
> AsyncOperationResponse modify(rpm_repository_href, data)



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

api_instance = PulpRpmClient::RepositoriesRpmApi.new

rpm_repository_href = 'rpm_repository_href_example' # String | URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/

data = PulpRpmClient::RepositoryAddRemoveContent.new # RepositoryAddRemoveContent | 


begin
  result = api_instance.modify(rpm_repository_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmApi->modify: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_repository_href** | **String**| URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/ | 
 **data** | [**RepositoryAddRemoveContent**](RepositoryAddRemoveContent.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **partial_update**
> RpmRpmRepository partial_update(rpm_repository_href, data)

Partially update a rpm repository

A ViewSet for RpmRepository.

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

api_instance = PulpRpmClient::RepositoriesRpmApi.new

rpm_repository_href = 'rpm_repository_href_example' # String | URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/

data = PulpRpmClient::RpmRpmRepository.new # RpmRpmRepository | 


begin
  #Partially update a rpm repository
  result = api_instance.partial_update(rpm_repository_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmApi->partial_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_repository_href** | **String**| URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/ | 
 **data** | [**RpmRpmRepository**](RpmRpmRepository.md)|  | 

### Return type

[**RpmRpmRepository**](RpmRpmRepository.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmRpmRepository read(rpm_repository_href, , opts)

Inspect a rpm repository

A ViewSet for RpmRepository.

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

api_instance = PulpRpmClient::RepositoriesRpmApi.new

rpm_repository_href = 'rpm_repository_href_example' # String | URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a rpm repository
  result = api_instance.read(rpm_repository_href, , opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_repository_href** | **String**| URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmRpmRepository**](RpmRpmRepository.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sync**
> AsyncOperationResponse sync(rpm_repository_href, data)

Sync from remote

Trigger an asynchronous task to sync RPM content.

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

api_instance = PulpRpmClient::RepositoriesRpmApi.new

rpm_repository_href = 'rpm_repository_href_example' # String | URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/

data = PulpRpmClient::RepositorySyncURL.new # RepositorySyncURL | 


begin
  #Sync from remote
  result = api_instance.sync(rpm_repository_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmApi->sync: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_repository_href** | **String**| URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/ | 
 **data** | [**RepositorySyncURL**](RepositorySyncURL.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> AsyncOperationResponse update(rpm_repository_href, data)

Update a rpm repository

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

api_instance = PulpRpmClient::RepositoriesRpmApi.new

rpm_repository_href = 'rpm_repository_href_example' # String | URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/

data = PulpRpmClient::RpmRpmRepository.new # RpmRpmRepository | 


begin
  #Update a rpm repository
  result = api_instance.update(rpm_repository_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RepositoriesRpmApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_repository_href** | **String**| URI of Rpm Repository. e.g.: /pulp/api/v3/repositories/rpm/rpm/1/ | 
 **data** | [**RpmRpmRepository**](RpmRpmRepository.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



