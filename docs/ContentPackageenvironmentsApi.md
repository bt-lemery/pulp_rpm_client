# SwaggerClient::ContentPackageenvironmentsApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](ContentPackageenvironmentsApi.md#delete) | **DELETE** {package_environment_href} | Delete a package environment
[**list**](ContentPackageenvironmentsApi.md#list) | **GET** /pulp/api/v3/content/rpm/packageenvironments/ | List package environments
[**read**](ContentPackageenvironmentsApi.md#read) | **GET** {package_environment_href} | Inspect a package environment


# **delete**
> delete(package_environment_href)

Delete a package environment

PackageEnvironment ViewSet.

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

api_instance = SwaggerClient::ContentPackageenvironmentsApi.new

package_environment_href = 'package_environment_href_example' # String | URI of Package Environment. e.g.: /pulp/api/v3/content/rpm/packageenvironments/1/


begin
  #Delete a package environment
  api_instance.delete(package_environment_href)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPackageenvironmentsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_environment_href** | **String**| URI of Package Environment. e.g.: /pulp/api/v3/content/rpm/packageenvironments/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse2007 list(opts)

List package environments

PackageEnvironment ViewSet.

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

api_instance = SwaggerClient::ContentPackageenvironmentsApi.new

opts = { 
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  limit: 56, # Integer | Number of results to return per page.
  offset: 56, # Integer | The initial index from which to return the results.
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #List package environments
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPackageenvironmentsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **offset** | **Integer**| The initial index from which to return the results. | [optional] 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmPackageEnvironment read(package_environment_href, opts)

Inspect a package environment

PackageEnvironment ViewSet.

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

api_instance = SwaggerClient::ContentPackageenvironmentsApi.new

package_environment_href = 'package_environment_href_example' # String | URI of Package Environment. e.g.: /pulp/api/v3/content/rpm/packageenvironments/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a package environment
  result = api_instance.read(package_environment_href, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPackageenvironmentsApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_environment_href** | **String**| URI of Package Environment. e.g.: /pulp/api/v3/content/rpm/packageenvironments/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmPackageEnvironment**](RpmPackageEnvironment.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



