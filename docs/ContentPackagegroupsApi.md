# SwaggerClient::ContentPackagegroupsApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](ContentPackagegroupsApi.md#delete) | **DELETE** {package_group_href} | Delete a package group
[**list**](ContentPackagegroupsApi.md#list) | **GET** /pulp/api/v3/content/rpm/packagegroups/ | List package groups
[**read**](ContentPackagegroupsApi.md#read) | **GET** {package_group_href} | Inspect a package group


# **delete**
> delete(package_group_href)

Delete a package group

PackageGroup ViewSet.

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

api_instance = SwaggerClient::ContentPackagegroupsApi.new

package_group_href = 'package_group_href_example' # String | URI of Package Group. e.g.: /pulp/api/v3/content/rpm/packagegroups/1/


begin
  #Delete a package group
  api_instance.delete(package_group_href)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPackagegroupsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_group_href** | **String**| URI of Package Group. e.g.: /pulp/api/v3/content/rpm/packagegroups/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse2008 list(opts)

List package groups

PackageGroup ViewSet.

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

api_instance = SwaggerClient::ContentPackagegroupsApi.new

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
  #List package groups
  result = api_instance.list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPackagegroupsApi->list: #{e}"
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

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmPackageGroup read(package_group_href, opts)

Inspect a package group

PackageGroup ViewSet.

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

api_instance = SwaggerClient::ContentPackagegroupsApi.new

package_group_href = 'package_group_href_example' # String | URI of Package Group. e.g.: /pulp/api/v3/content/rpm/packagegroups/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a package group
  result = api_instance.read(package_group_href, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPackagegroupsApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_group_href** | **String**| URI of Package Group. e.g.: /pulp/api/v3/content/rpm/packagegroups/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmPackageGroup**](RpmPackageGroup.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



