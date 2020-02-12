# PulpRpmClient::DistributionsRpmApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DistributionsRpmApi.md#create) | **POST** /pulp/api/v3/distributions/rpm/rpm/ | Create a rpm distribution
[**delete**](DistributionsRpmApi.md#delete) | **DELETE** {rpm_distribution_href} | Delete a rpm distribution
[**list**](DistributionsRpmApi.md#list) | **GET** /pulp/api/v3/distributions/rpm/rpm/ | List rpm distributions
[**partial_update**](DistributionsRpmApi.md#partial_update) | **PATCH** {rpm_distribution_href} | Partially update a rpm distribution
[**read**](DistributionsRpmApi.md#read) | **GET** {rpm_distribution_href} | Inspect a rpm distribution
[**update**](DistributionsRpmApi.md#update) | **PUT** {rpm_distribution_href} | Update a rpm distribution


# **create**
> AsyncOperationResponse create(data)

Create a rpm distribution

Trigger an asynchronous create task

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

api_instance = PulpRpmClient::DistributionsRpmApi.new

data = PulpRpmClient::RpmRpmDistribution.new # RpmRpmDistribution | 


begin
  #Create a rpm distribution
  result = api_instance.create(data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsRpmApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**RpmRpmDistribution**](RpmRpmDistribution.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> AsyncOperationResponse delete(rpm_distribution_href, )

Delete a rpm distribution

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

api_instance = PulpRpmClient::DistributionsRpmApi.new

rpm_distribution_href = 'rpm_distribution_href_example' # String | URI of Rpm Distribution. e.g.: /pulp/api/v3/distributions/rpm/rpm/1/


begin
  #Delete a rpm distribution
  result = api_instance.delete(rpm_distribution_href, )
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsRpmApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_distribution_href** | **String**| URI of Rpm Distribution. e.g.: /pulp/api/v3/distributions/rpm/rpm/1/ | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse20013 list(opts)

List rpm distributions

ViewSet for RPM Distributions.

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

api_instance = PulpRpmClient::DistributionsRpmApi.new

opts = { 
  name: 'name_example', # String | 
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  base_path: 'base_path_example', # String | 
  base_path__contains: 'base_path__contains_example', # String | Filter results where base_path contains value
  base_path__icontains: 'base_path__icontains_example', # String | Filter results where base_path contains value
  base_path__in: 'base_path__in_example', # String | Filter results where base_path is in a comma-separated list of values
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List rpm distributions
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsRpmApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **name__in** | **String**| Filter results where name is in a comma-separated list of values | [optional] 
 **base_path** | **String**|  | [optional] 
 **base_path__contains** | **String**| Filter results where base_path contains value | [optional] 
 **base_path__icontains** | **String**| Filter results where base_path contains value | [optional] 
 **base_path__in** | **String**| Filter results where base_path is in a comma-separated list of values | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **partial_update**
> AsyncOperationResponse partial_update(rpm_distribution_href, data)

Partially update a rpm distribution

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

api_instance = PulpRpmClient::DistributionsRpmApi.new

rpm_distribution_href = 'rpm_distribution_href_example' # String | URI of Rpm Distribution. e.g.: /pulp/api/v3/distributions/rpm/rpm/1/

data = PulpRpmClient::RpmRpmDistribution.new # RpmRpmDistribution | 


begin
  #Partially update a rpm distribution
  result = api_instance.partial_update(rpm_distribution_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsRpmApi->partial_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_distribution_href** | **String**| URI of Rpm Distribution. e.g.: /pulp/api/v3/distributions/rpm/rpm/1/ | 
 **data** | [**RpmRpmDistribution**](RpmRpmDistribution.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmRpmDistribution read(rpm_distribution_href, , opts)

Inspect a rpm distribution

ViewSet for RPM Distributions.

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

api_instance = PulpRpmClient::DistributionsRpmApi.new

rpm_distribution_href = 'rpm_distribution_href_example' # String | URI of Rpm Distribution. e.g.: /pulp/api/v3/distributions/rpm/rpm/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a rpm distribution
  result = api_instance.read(rpm_distribution_href, , opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsRpmApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_distribution_href** | **String**| URI of Rpm Distribution. e.g.: /pulp/api/v3/distributions/rpm/rpm/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmRpmDistribution**](RpmRpmDistribution.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> AsyncOperationResponse update(rpm_distribution_href, data)

Update a rpm distribution

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

api_instance = PulpRpmClient::DistributionsRpmApi.new

rpm_distribution_href = 'rpm_distribution_href_example' # String | URI of Rpm Distribution. e.g.: /pulp/api/v3/distributions/rpm/rpm/1/

data = PulpRpmClient::RpmRpmDistribution.new # RpmRpmDistribution | 


begin
  #Update a rpm distribution
  result = api_instance.update(rpm_distribution_href, data)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling DistributionsRpmApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpm_distribution_href** | **String**| URI of Rpm Distribution. e.g.: /pulp/api/v3/distributions/rpm/rpm/1/ | 
 **data** | [**RpmRpmDistribution**](RpmRpmDistribution.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



