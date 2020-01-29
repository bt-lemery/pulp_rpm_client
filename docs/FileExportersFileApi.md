# SwaggerClient::FileExportersFileApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](FileExportersFileApi.md#create) | **POST** /pulp/api/v3/file_exporters/file/file/ | Create a file file system exporter
[**delete**](FileExportersFileApi.md#delete) | **DELETE** {file_file_system_exporter_href} | Delete a file file system exporter
[**export**](FileExportersFileApi.md#export) | **POST** {file_file_system_exporter_href}export/ | 
[**list**](FileExportersFileApi.md#list) | **GET** /pulp/api/v3/file_exporters/file/file/ | List file file system exporters
[**partial_update**](FileExportersFileApi.md#partial_update) | **PATCH** {file_file_system_exporter_href} | Partially update a file file system exporter
[**read**](FileExportersFileApi.md#read) | **GET** {file_file_system_exporter_href} | Inspect a file file system exporter
[**update**](FileExportersFileApi.md#update) | **PUT** {file_file_system_exporter_href} | Update a file file system exporter


# **create**
> FileFileFileSystemExporter create(data)

Create a file file system exporter

FileSystemExporters export content from a publication to a path on the file system.

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

api_instance = SwaggerClient::FileExportersFileApi.new

data = SwaggerClient::FileFileFileSystemExporter.new # FileFileFileSystemExporter | 


begin
  #Create a file file system exporter
  result = api_instance.create(data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FileExportersFileApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**FileFileFileSystemExporter**](FileFileFileSystemExporter.md)|  | 

### Return type

[**FileFileFileSystemExporter**](FileFileFileSystemExporter.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(file_file_system_exporter_href, )

Delete a file file system exporter

FileSystemExporters export content from a publication to a path on the file system.

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

api_instance = SwaggerClient::FileExportersFileApi.new

file_file_system_exporter_href = 'file_file_system_exporter_href_example' # String | URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/


begin
  #Delete a file file system exporter
  api_instance.delete(file_file_system_exporter_href, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FileExportersFileApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_file_system_exporter_href** | **String**| URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **export**
> AsyncOperationResponse export(file_file_system_exporter_href, data)



Trigger an asynchronous task to export a file publication.

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

api_instance = SwaggerClient::FileExportersFileApi.new

file_file_system_exporter_href = 'file_file_system_exporter_href_example' # String | URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/

data = SwaggerClient::PublicationExport.new # PublicationExport | 


begin
  result = api_instance.export(file_file_system_exporter_href, data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FileExportersFileApi->export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_file_system_exporter_href** | **String**| URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/ | 
 **data** | [**PublicationExport**](PublicationExport.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20014 list(opts)

List file file system exporters

FileSystemExporters export content from a publication to a path on the file system.

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

api_instance = SwaggerClient::FileExportersFileApi.new

opts = { 
  name: 'name_example', # String | 
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List file file system exporters
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FileExportersFileApi->list: #{e}"
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

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **partial_update**
> FileFileFileSystemExporter partial_update(file_file_system_exporter_href, data)

Partially update a file file system exporter

FileSystemExporters export content from a publication to a path on the file system.

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

api_instance = SwaggerClient::FileExportersFileApi.new

file_file_system_exporter_href = 'file_file_system_exporter_href_example' # String | URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/

data = SwaggerClient::FileFileFileSystemExporter.new # FileFileFileSystemExporter | 


begin
  #Partially update a file file system exporter
  result = api_instance.partial_update(file_file_system_exporter_href, data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FileExportersFileApi->partial_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_file_system_exporter_href** | **String**| URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/ | 
 **data** | [**FileFileFileSystemExporter**](FileFileFileSystemExporter.md)|  | 

### Return type

[**FileFileFileSystemExporter**](FileFileFileSystemExporter.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> FileFileFileSystemExporter read(file_file_system_exporter_href, , opts)

Inspect a file file system exporter

FileSystemExporters export content from a publication to a path on the file system.

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

api_instance = SwaggerClient::FileExportersFileApi.new

file_file_system_exporter_href = 'file_file_system_exporter_href_example' # String | URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a file file system exporter
  result = api_instance.read(file_file_system_exporter_href, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FileExportersFileApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_file_system_exporter_href** | **String**| URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**FileFileFileSystemExporter**](FileFileFileSystemExporter.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> FileFileFileSystemExporter update(file_file_system_exporter_href, data)

Update a file file system exporter

FileSystemExporters export content from a publication to a path on the file system.

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

api_instance = SwaggerClient::FileExportersFileApi.new

file_file_system_exporter_href = 'file_file_system_exporter_href_example' # String | URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/

data = SwaggerClient::FileFileFileSystemExporter.new # FileFileFileSystemExporter | 


begin
  #Update a file file system exporter
  result = api_instance.update(file_file_system_exporter_href, data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FileExportersFileApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_file_system_exporter_href** | **String**| URI of File File System Exporter. e.g.: /pulp/api/v3/file_exporters/file/file/1/ | 
 **data** | [**FileFileFileSystemExporter**](FileFileFileSystemExporter.md)|  | 

### Return type

[**FileFileFileSystemExporter**](FileFileFileSystemExporter.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



