# PulpRpmClient::RemotesFileApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RemotesFileApi.md#create) | **POST** /pulp/api/v3/remotes/file/file/ | Create a file remote
[**delete**](RemotesFileApi.md#delete) | **DELETE** {file_remote_href} | Delete a file remote
[**list**](RemotesFileApi.md#list) | **GET** /pulp/api/v3/remotes/file/file/ | List file remotes
[**partial_update**](RemotesFileApi.md#partial_update) | **PATCH** {file_remote_href} | Partially update a file remote
[**read**](RemotesFileApi.md#read) | **GET** {file_remote_href} | Inspect a file remote
[**update**](RemotesFileApi.md#update) | **PUT** {file_remote_href} | Update a file remote


# **create**
> FileFileRemote create(data)

Create a file remote

 FileRemote represents an external source of File Content.  The target url of a FileRemote must contain a file manifest, which contains the metadata for all files at the source.

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

api_instance = PulpRpmClient::RemotesFileApi.new

data = PulpRpmClient::FileFileRemote.new # FileFileRemote | 


begin
  #Create a file remote
  result = api_instance.create(data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesFileApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**FileFileRemote**](FileFileRemote.md)|  | 

### Return type

[**FileFileRemote**](FileFileRemote.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> AsyncOperationResponse delete(file_remote_href, )

Delete a file remote

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

api_instance = PulpRpmClient::RemotesFileApi.new

file_remote_href = 'file_remote_href_example' # String | URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/


begin
  #Delete a file remote
  result = api_instance.delete(file_remote_href, )
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesFileApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_remote_href** | **String**| URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/ | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20017 list(opts)

List file remotes

 FileRemote represents an external source of File Content.  The target url of a FileRemote must contain a file manifest, which contains the metadata for all files at the source.

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

api_instance = PulpRpmClient::RemotesFileApi.new

opts = { 
  name: 'name_example', # String | 
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  pulp_last_updated__lt: 'pulp_last_updated__lt_example', # String | Filter results where pulp_last_updated is less than value
  pulp_last_updated__lte: 'pulp_last_updated__lte_example', # String | Filter results where pulp_last_updated is less than or equal to value
  pulp_last_updated__gt: 'pulp_last_updated__gt_example', # String | Filter results where pulp_last_updated is greater than value
  pulp_last_updated__gte: 'pulp_last_updated__gte_example', # String | Filter results where pulp_last_updated is greater than or equal to value
  pulp_last_updated__range: 'pulp_last_updated__range_example', # String | Filter results where pulp_last_updated is between two comma separated values
  pulp_last_updated: 'pulp_last_updated_example', # String | ISO 8601 formatted dates are supported
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List file remotes
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesFileApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **name__in** | **String**| Filter results where name is in a comma-separated list of values | [optional] 
 **pulp_last_updated__lt** | **String**| Filter results where pulp_last_updated is less than value | [optional] 
 **pulp_last_updated__lte** | **String**| Filter results where pulp_last_updated is less than or equal to value | [optional] 
 **pulp_last_updated__gt** | **String**| Filter results where pulp_last_updated is greater than value | [optional] 
 **pulp_last_updated__gte** | **String**| Filter results where pulp_last_updated is greater than or equal to value | [optional] 
 **pulp_last_updated__range** | **String**| Filter results where pulp_last_updated is between two comma separated values | [optional] 
 **pulp_last_updated** | **String**| ISO 8601 formatted dates are supported | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **partial_update**
> AsyncOperationResponse partial_update(file_remote_href, data)

Partially update a file remote

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

api_instance = PulpRpmClient::RemotesFileApi.new

file_remote_href = 'file_remote_href_example' # String | URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/

data = PulpRpmClient::FileFileRemote.new # FileFileRemote | 


begin
  #Partially update a file remote
  result = api_instance.partial_update(file_remote_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesFileApi->partial_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_remote_href** | **String**| URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/ | 
 **data** | [**FileFileRemote**](FileFileRemote.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> FileFileRemote read(file_remote_href, , opts)

Inspect a file remote

 FileRemote represents an external source of File Content.  The target url of a FileRemote must contain a file manifest, which contains the metadata for all files at the source.

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

api_instance = PulpRpmClient::RemotesFileApi.new

file_remote_href = 'file_remote_href_example' # String | URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a file remote
  result = api_instance.read(file_remote_href, , opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesFileApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_remote_href** | **String**| URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**FileFileRemote**](FileFileRemote.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> AsyncOperationResponse update(file_remote_href, data)

Update a file remote

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

api_instance = PulpRpmClient::RemotesFileApi.new

file_remote_href = 'file_remote_href_example' # String | URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/

data = PulpRpmClient::FileFileRemote.new # FileFileRemote | 


begin
  #Update a file remote
  result = api_instance.update(file_remote_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesFileApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_remote_href** | **String**| URI of File Remote. e.g.: /pulp/api/v3/remotes/file/file/1/ | 
 **data** | [**FileFileRemote**](FileFileRemote.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



