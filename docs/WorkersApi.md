# SwaggerClient::WorkersApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](WorkersApi.md#list) | **GET** /pulp/api/v3/workers/ | List workers
[**read**](WorkersApi.md#read) | **GET** {worker_href} | Inspect a worker


# **list**
> InlineResponse20024 list(opts)

List workers



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

api_instance = SwaggerClient::WorkersApi.new

opts = { 
  name: 'name_example', # String | 
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  last_heartbeat__lt: 'last_heartbeat__lt_example', # String | Filter results where last_heartbeat is less than value
  last_heartbeat__lte: 'last_heartbeat__lte_example', # String | Filter results where last_heartbeat is less than or equal to value
  last_heartbeat__gt: 'last_heartbeat__gt_example', # String | Filter results where last_heartbeat is greater than value
  last_heartbeat__gte: 'last_heartbeat__gte_example', # String | Filter results where last_heartbeat is greater than or equal to value
  last_heartbeat__range: 'last_heartbeat__range_example', # String | Filter results where last_heartbeat is between two comma separated values
  online: 'online_example', # String | 
  missing: 'missing_example', # String | 
  last_heartbeat: 'last_heartbeat_example', # String | ISO 8601 formatted dates are supported
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List workers
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WorkersApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **name__in** | **String**| Filter results where name is in a comma-separated list of values | [optional] 
 **last_heartbeat__lt** | **String**| Filter results where last_heartbeat is less than value | [optional] 
 **last_heartbeat__lte** | **String**| Filter results where last_heartbeat is less than or equal to value | [optional] 
 **last_heartbeat__gt** | **String**| Filter results where last_heartbeat is greater than value | [optional] 
 **last_heartbeat__gte** | **String**| Filter results where last_heartbeat is greater than or equal to value | [optional] 
 **last_heartbeat__range** | **String**| Filter results where last_heartbeat is between two comma separated values | [optional] 
 **online** | **String**|  | [optional] 
 **missing** | **String**|  | [optional] 
 **last_heartbeat** | **String**| ISO 8601 formatted dates are supported | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> Worker read(worker_href, opts)

Inspect a worker



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

api_instance = SwaggerClient::WorkersApi.new

worker_href = 'worker_href_example' # String | URI of Worker. e.g.: /pulp/api/v3/workers/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a worker
  result = api_instance.read(worker_href, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WorkersApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **worker_href** | **String**| URI of Worker. e.g.: /pulp/api/v3/workers/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**Worker**](Worker.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



