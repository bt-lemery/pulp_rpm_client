# PulpRpmClient::RemotesRpmApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RemotesRpmApi.md#create) | **POST** /pulp/api/v3/remotes/rpm/rpm/ | Create a rpm remote
[**delete**](RemotesRpmApi.md#delete) | **DELETE** {rpm_remote_href} | Delete a rpm remote
[**list**](RemotesRpmApi.md#list) | **GET** /pulp/api/v3/remotes/rpm/rpm/ | List rpm remotes
[**partial_update**](RemotesRpmApi.md#partial_update) | **PATCH** {rpm_remote_href} | Partially update a rpm remote
[**read**](RemotesRpmApi.md#read) | **GET** {rpm_remote_href} | Inspect a rpm remote
[**update**](RemotesRpmApi.md#update) | **PUT** {rpm_remote_href} | Update a rpm remote


# **create**
> RpmRpmRemote create(data)

Create a rpm remote

A ViewSet for RpmRemote.

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

api_instance = PulpRpmClient::RemotesRpmApi.new

data = PulpRpmClient::RpmRpmRemote.new # RpmRpmRemote | 


begin
  #Create a rpm remote
  result = api_instance.create(data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesRpmApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**RpmRpmRemote**](RpmRpmRemote.md)|  | 

### Return type

[**RpmRpmRemote**](RpmRpmRemote.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> AsyncOperationResponse delete(rpm_remote_href, )

Delete a rpm remote

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

api_instance = PulpRpmClient::RemotesRpmApi.new

rpm_remote_href = 'rpm_remote_href_example' # String | URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/


begin
  #Delete a rpm remote
  result = api_instance.delete(rpm_remote_href, )
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesRpmApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_remote_href** | **String**| URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/ | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20018 list(opts)

List rpm remotes

A ViewSet for RpmRemote.

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

api_instance = PulpRpmClient::RemotesRpmApi.new

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
  #List rpm remotes
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesRpmApi->list: #{e}"
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

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **partial_update**
> AsyncOperationResponse partial_update(rpm_remote_href, data)

Partially update a rpm remote

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

api_instance = PulpRpmClient::RemotesRpmApi.new

rpm_remote_href = 'rpm_remote_href_example' # String | URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/

data = PulpRpmClient::RpmRpmRemote.new # RpmRpmRemote | 


begin
  #Partially update a rpm remote
  result = api_instance.partial_update(rpm_remote_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesRpmApi->partial_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_remote_href** | **String**| URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/ | 
 **data** | [**RpmRpmRemote**](RpmRpmRemote.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmRpmRemote read(rpm_remote_href, , opts)

Inspect a rpm remote

A ViewSet for RpmRemote.

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

api_instance = PulpRpmClient::RemotesRpmApi.new

rpm_remote_href = 'rpm_remote_href_example' # String | URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a rpm remote
  result = api_instance.read(rpm_remote_href, , opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesRpmApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_remote_href** | **String**| URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmRpmRemote**](RpmRpmRemote.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> AsyncOperationResponse update(rpm_remote_href, data)

Update a rpm remote

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

api_instance = PulpRpmClient::RemotesRpmApi.new

rpm_remote_href = 'rpm_remote_href_example' # String | URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/

data = PulpRpmClient::RpmRpmRemote.new # RpmRpmRemote | 


begin
  #Update a rpm remote
  result = api_instance.update(rpm_remote_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling RemotesRpmApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_remote_href** | **String**| URI of Rpm Remote. e.g.: /pulp/api/v3/remotes/rpm/rpm/1/ | 
 **data** | [**RpmRpmRemote**](RpmRpmRemote.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



