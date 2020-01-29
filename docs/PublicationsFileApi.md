# SwaggerClient::PublicationsFileApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](PublicationsFileApi.md#create) | **POST** /pulp/api/v3/publications/file/file/ | Create a file publication
[**delete**](PublicationsFileApi.md#delete) | **DELETE** {file_publication_href} | Delete a file publication
[**list**](PublicationsFileApi.md#list) | **GET** /pulp/api/v3/publications/file/file/ | List file publications
[**read**](PublicationsFileApi.md#read) | **GET** {file_publication_href} | Inspect a file publication


# **create**
> AsyncOperationResponse create(data)

Create a file publication

Trigger an asynchronous task to publish file content.

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

api_instance = SwaggerClient::PublicationsFileApi.new

data = SwaggerClient::FileFilePublication.new # FileFilePublication | 


begin
  #Create a file publication
  result = api_instance.create(data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicationsFileApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**FileFilePublication**](FileFilePublication.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(file_publication_href)

Delete a file publication

 A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.

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

api_instance = SwaggerClient::PublicationsFileApi.new

file_publication_href = 'file_publication_href_example' # String | URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/


begin
  #Delete a file publication
  api_instance.delete(file_publication_href)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicationsFileApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_publication_href** | **String**| URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20015 list(opts)

List file publications

 A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.

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

api_instance = SwaggerClient::PublicationsFileApi.new

opts = { 
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List file publications
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicationsFileApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> FileFilePublication read(file_publication_href, opts)

Inspect a file publication

 A FilePublication contains metadata about all the File Content in a particular File Repository Version. Once a FilePublication has been created, it can be hosted using the File Distribution API.

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

api_instance = SwaggerClient::PublicationsFileApi.new

file_publication_href = 'file_publication_href_example' # String | URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a file publication
  result = api_instance.read(file_publication_href, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicationsFileApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_publication_href** | **String**| URI of File Publication. e.g.: /pulp/api/v3/publications/file/file/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**FileFilePublication**](FileFilePublication.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



