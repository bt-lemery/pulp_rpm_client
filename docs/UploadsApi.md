# PulpRpmClient::UploadsApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit**](UploadsApi.md#commit) | **POST** {upload_href}commit/ | Finish an Upload
[**create**](UploadsApi.md#create) | **POST** /pulp/api/v3/uploads/ | Create an upload
[**delete**](UploadsApi.md#delete) | **DELETE** {upload_href} | Delete an upload
[**list**](UploadsApi.md#list) | **GET** /pulp/api/v3/uploads/ | List uploads
[**read**](UploadsApi.md#read) | **GET** {upload_href} | Inspect an upload
[**update**](UploadsApi.md#update) | **PUT** {upload_href} | Upload a file chunk


# **commit**
> AsyncOperationResponse commit(upload_href, data)

Finish an Upload

Queues a Task that creates an Artifact, and the Upload gets deleted and cannot be re-used.

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

api_instance = PulpRpmClient::UploadsApi.new

upload_href = 'upload_href_example' # String | URI of Upload. e.g.: /pulp/api/v3/uploads/1/

data = PulpRpmClient::UploadCommit.new # UploadCommit | 


begin
  #Finish an Upload
  result = api_instance.commit(upload_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling UploadsApi->commit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_href** | **String**| URI of Upload. e.g.: /pulp/api/v3/uploads/1/ | 
 **data** | [**UploadCommit**](UploadCommit.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create**
> Upload create(data)

Create an upload

View for chunked uploads.

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

api_instance = PulpRpmClient::UploadsApi.new

data = PulpRpmClient::Upload.new # Upload | 


begin
  #Create an upload
  result = api_instance.create(data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling UploadsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Upload**](Upload.md)|  | 

### Return type

[**Upload**](Upload.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(upload_href)

Delete an upload

View for chunked uploads.

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

api_instance = PulpRpmClient::UploadsApi.new

upload_href = 'upload_href_example' # String | URI of Upload. e.g.: /pulp/api/v3/uploads/1/


begin
  #Delete an upload
  api_instance.delete(upload_href)
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling UploadsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_href** | **String**| URI of Upload. e.g.: /pulp/api/v3/uploads/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20023 list(opts)

List uploads

View for chunked uploads.

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

api_instance = PulpRpmClient::UploadsApi.new

opts = { 
  completed: 'completed_example', # String | ISO 8601 formatted dates are supported
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List uploads
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling UploadsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **completed** | **String**| ISO 8601 formatted dates are supported | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> UploadDetail read(upload_href, opts)

Inspect an upload

View for chunked uploads.

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

api_instance = PulpRpmClient::UploadsApi.new

upload_href = 'upload_href_example' # String | URI of Upload. e.g.: /pulp/api/v3/uploads/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect an upload
  result = api_instance.read(upload_href, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling UploadsApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_href** | **String**| URI of Upload. e.g.: /pulp/api/v3/uploads/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**UploadDetail**](UploadDetail.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> Upload update(upload_hreffile, content_range, opts)

Upload a file chunk

Upload a chunk for an upload.

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

api_instance = PulpRpmClient::UploadsApi.new

upload_href = 'upload_href_example' # String | URI of Upload. e.g.: /pulp/api/v3/uploads/1/

file = File.new('/path/to/file.txt') # File | A chunk of the uploaded file.

content_range = 'content_range_example' # String | The Content-Range header specifies the location of the file chunk within the file.

opts = { 
  sha256: 'sha256_example' # String | The SHA-256 checksum of the chunk if available.
}

begin
  #Upload a file chunk
  result = api_instance.update(upload_hreffile, content_range, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling UploadsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_href** | **String**| URI of Upload. e.g.: /pulp/api/v3/uploads/1/ | 
 **file** | **File**| A chunk of the uploaded file. | 
 **content_range** | **String**| The Content-Range header specifies the location of the file chunk within the file. | 
 **sha256** | **String**| The SHA-256 checksum of the chunk if available. | [optional] 

### Return type

[**Upload**](Upload.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: application/json



