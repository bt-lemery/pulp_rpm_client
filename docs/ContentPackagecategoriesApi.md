# PulpRpmClient::ContentPackagecategoriesApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](ContentPackagecategoriesApi.md#delete) | **DELETE** {package_category_href} | Delete a package category
[**list**](ContentPackagecategoriesApi.md#list) | **GET** /pulp/api/v3/content/rpm/packagecategories/ | List package categorys
[**read**](ContentPackagecategoriesApi.md#read) | **GET** {package_category_href} | Inspect a package category


# **delete**
> delete(package_category_href)

Delete a package category

PackageCategory ViewSet.

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

api_instance = PulpRpmClient::ContentPackagecategoriesApi.new

package_category_href = 'package_category_href_example' # String | URI of Package Category. e.g.: /pulp/api/v3/content/rpm/packagecategories/1/


begin
  #Delete a package category
  api_instance.delete(package_category_href)
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentPackagecategoriesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_category_href** | **String**| URI of Package Category. e.g.: /pulp/api/v3/content/rpm/packagecategories/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse2006 list(opts)

List package categorys

PackageCategory ViewSet.

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

api_instance = PulpRpmClient::ContentPackagecategoriesApi.new

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
  #List package categorys
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentPackagecategoriesApi->list: #{e}"
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

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmPackageCategory read(package_category_href, opts)

Inspect a package category

PackageCategory ViewSet.

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

api_instance = PulpRpmClient::ContentPackagecategoriesApi.new

package_category_href = 'package_category_href_example' # String | URI of Package Category. e.g.: /pulp/api/v3/content/rpm/packagecategories/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a package category
  result = api_instance.read(package_category_href, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentPackagecategoriesApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_category_href** | **String**| URI of Package Category. e.g.: /pulp/api/v3/content/rpm/packagecategories/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmPackageCategory**](RpmPackageCategory.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



