# SwaggerClient::StatusApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**status_read**](StatusApi.md#status_read) | **GET** /pulp/api/v3/status/ | Inspect status of Pulp


# **status_read**
> Status status_read(opts)

Inspect status of Pulp

Returns app information including the version of pulpcore and loaded pulp plugins, known workers, database connection status, and messaging connection status

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

api_instance = SwaggerClient::StatusApi.new

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect status of Pulp
  result = api_instance.status_read(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StatusApi->status_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



