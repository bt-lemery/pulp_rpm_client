# SwaggerClient::OrphansApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](OrphansApi.md#delete) | **DELETE** /pulp/api/v3/orphans/ | Delete orphans


# **delete**
> AsyncOperationResponse delete

Delete orphans

Trigger an asynchronous task that deletes allorphaned content and artifacts.

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

api_instance = SwaggerClient::OrphansApi.new

begin
  #Delete orphans
  result = api_instance.delete
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrphansApi->delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



