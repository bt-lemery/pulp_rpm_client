# SwaggerClient::TasksApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](TasksApi.md#delete) | **DELETE** {task_href} | Delete a task
[**list**](TasksApi.md#list) | **GET** /pulp/api/v3/tasks/ | List tasks
[**read**](TasksApi.md#read) | **GET** {task_href} | Inspect a task
[**tasks_cancel**](TasksApi.md#tasks_cancel) | **PATCH** {task_href} | Cancel a task


# **delete**
> delete(task_href, )

Delete a task



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

api_instance = SwaggerClient::TasksApi.new

task_href = 'task_href_example' # String | URI of Task. e.g.: /pulp/api/v3/tasks/1/


begin
  #Delete a task
  api_instance.delete(task_href, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TasksApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_href** | **String**| URI of Task. e.g.: /pulp/api/v3/tasks/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20022 list(opts)

List tasks



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

api_instance = SwaggerClient::TasksApi.new

opts = { 
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  state: 'state_example', # String | 
  state__in: 'state__in_example', # String | Filter results where state is in a comma-separated list of values
  worker: 'worker_example', # String | Foreign Key referenced by HREF
  worker__in: 'worker__in_example', # String | Filter results where worker is in a comma-separated list of values
  name__contains: 'name__contains_example', # String | Filter results where name contains value
  started_at__lt: 'started_at__lt_example', # String | Filter results where started_at is less than value
  started_at__lte: 'started_at__lte_example', # String | Filter results where started_at is less than or equal to value
  started_at__gt: 'started_at__gt_example', # String | Filter results where started_at is greater than value
  started_at__gte: 'started_at__gte_example', # String | Filter results where started_at is greater than or equal to value
  started_at__range: 'started_at__range_example', # String | Filter results where started_at is between two comma separated values
  finished_at__lt: 'finished_at__lt_example', # String | Filter results where finished_at is less than value
  finished_at__lte: 'finished_at__lte_example', # String | Filter results where finished_at is less than or equal to value
  finished_at__gt: 'finished_at__gt_example', # String | Filter results where finished_at is greater than value
  finished_at__gte: 'finished_at__gte_example', # String | Filter results where finished_at is greater than or equal to value
  finished_at__range: 'finished_at__range_example', # String | Filter results where finished_at is between two comma separated values
  reserved_resources_record: 'reserved_resources_record_example', # String | 
  created_resources: 'created_resources_example', # String | 
  name: 'name_example', # String | 
  started_at: 'started_at_example', # String | ISO 8601 formatted dates are supported
  finished_at: 'finished_at_example', # String | ISO 8601 formatted dates are supported
  parent: 'parent_example', # String | Foreign Key referenced by HREF
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List tasks
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TasksApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **state** | **String**|  | [optional] 
 **state__in** | **String**| Filter results where state is in a comma-separated list of values | [optional] 
 **worker** | **String**| Foreign Key referenced by HREF | [optional] 
 **worker__in** | **String**| Filter results where worker is in a comma-separated list of values | [optional] 
 **name__contains** | **String**| Filter results where name contains value | [optional] 
 **started_at__lt** | **String**| Filter results where started_at is less than value | [optional] 
 **started_at__lte** | **String**| Filter results where started_at is less than or equal to value | [optional] 
 **started_at__gt** | **String**| Filter results where started_at is greater than value | [optional] 
 **started_at__gte** | **String**| Filter results where started_at is greater than or equal to value | [optional] 
 **started_at__range** | **String**| Filter results where started_at is between two comma separated values | [optional] 
 **finished_at__lt** | **String**| Filter results where finished_at is less than value | [optional] 
 **finished_at__lte** | **String**| Filter results where finished_at is less than or equal to value | [optional] 
 **finished_at__gt** | **String**| Filter results where finished_at is greater than value | [optional] 
 **finished_at__gte** | **String**| Filter results where finished_at is greater than or equal to value | [optional] 
 **finished_at__range** | **String**| Filter results where finished_at is between two comma separated values | [optional] 
 **reserved_resources_record** | **String**|  | [optional] 
 **created_resources** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **started_at** | **String**| ISO 8601 formatted dates are supported | [optional] 
 **finished_at** | **String**| ISO 8601 formatted dates are supported | [optional] 
 **parent** | **String**| Foreign Key referenced by HREF | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> Task read(task_href, , opts)

Inspect a task



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

api_instance = SwaggerClient::TasksApi.new

task_href = 'task_href_example' # String | URI of Task. e.g.: /pulp/api/v3/tasks/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a task
  result = api_instance.read(task_href, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TasksApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_href** | **String**| URI of Task. e.g.: /pulp/api/v3/tasks/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**Task**](Task.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tasks_cancel**
> Task tasks_cancel(task_href, data)

Cancel a task

This operation cancels a task.

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

api_instance = SwaggerClient::TasksApi.new

task_href = 'task_href_example' # String | URI of Task. e.g.: /pulp/api/v3/tasks/1/

data = SwaggerClient::TaskCancel.new # TaskCancel | 


begin
  #Cancel a task
  result = api_instance.tasks_cancel(task_href, data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TasksApi->tasks_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_href** | **String**| URI of Task. e.g.: /pulp/api/v3/tasks/1/ | 
 **data** | [**TaskCancel**](TaskCancel.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



