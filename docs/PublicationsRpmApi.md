# PulpRpmClient::PublicationsRpmApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](PublicationsRpmApi.md#create) | **POST** /pulp/api/v3/publications/rpm/rpm/ | Create a rpm publication
[**delete**](PublicationsRpmApi.md#delete) | **DELETE** {rpm_publication_href} | Delete a rpm publication
[**list**](PublicationsRpmApi.md#list) | **GET** /pulp/api/v3/publications/rpm/rpm/ | List rpm publications
[**read**](PublicationsRpmApi.md#read) | **GET** {rpm_publication_href} | Inspect a rpm publication


# **create**
> AsyncOperationResponse create(data)

Create a rpm publication

Trigger an asynchronous task to create a new RPM content publication.

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

api_instance = PulpRpmClient::PublicationsRpmApi.new

data = PulpRpmClient::RpmRpmPublication.new # RpmRpmPublication | 


begin
  #Create a rpm publication
  result = api_instance.create(data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling PublicationsRpmApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**RpmRpmPublication**](RpmRpmPublication.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(rpm_publication_href)

Delete a rpm publication

ViewSet for Rpm Publications.

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

api_instance = PulpRpmClient::PublicationsRpmApi.new

rpm_publication_href = 'rpm_publication_href_example' # String | URI of Rpm Publication. e.g.: /pulp/api/v3/publications/rpm/rpm/1/


begin
  #Delete a rpm publication
  api_instance.delete(rpm_publication_href)
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling PublicationsRpmApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_publication_href** | **String**| URI of Rpm Publication. e.g.: /pulp/api/v3/publications/rpm/rpm/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20016 list(opts)

List rpm publications

ViewSet for Rpm Publications.

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

api_instance = PulpRpmClient::PublicationsRpmApi.new

opts = { 
  ordering: 'ordering_example', # String | Which field to use when ordering the results.
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List rpm publications
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling PublicationsRpmApi->list: #{e}"
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

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmRpmPublication read(rpm_publication_href, opts)

Inspect a rpm publication

ViewSet for Rpm Publications.

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

api_instance = PulpRpmClient::PublicationsRpmApi.new

rpm_publication_href = 'rpm_publication_href_example' # String | URI of Rpm Publication. e.g.: /pulp/api/v3/publications/rpm/rpm/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a rpm publication
  result = api_instance.read(rpm_publication_href, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling PublicationsRpmApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_publication_href** | **String**| URI of Rpm Publication. e.g.: /pulp/api/v3/publications/rpm/rpm/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmRpmPublication**](RpmRpmPublication.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



