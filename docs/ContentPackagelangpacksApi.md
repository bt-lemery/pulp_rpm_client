# PulpRpmClient::ContentPackagelangpacksApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](ContentPackagelangpacksApi.md#delete) | **DELETE** {package_langpacks_href} | Delete a package langpacks
[**list**](ContentPackagelangpacksApi.md#list) | **GET** /pulp/api/v3/content/rpm/packagelangpacks/ | List package langpackss
[**read**](ContentPackagelangpacksApi.md#read) | **GET** {package_langpacks_href} | Inspect a package langpacks


# **delete**
> delete(package_langpacks_href)

Delete a package langpacks

PackageLangpacks ViewSet.

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

api_instance = PulpRpmClient::ContentPackagelangpacksApi.new

package_langpacks_href = 'package_langpacks_href_example' # String | URI of Package Langpacks. e.g.: /pulp/api/v3/content/rpm/packagelangpacks/1/


begin
  #Delete a package langpacks
  api_instance.delete(package_langpacks_href)
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentPackagelangpacksApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_langpacks_href** | **String**| URI of Package Langpacks. e.g.: /pulp/api/v3/content/rpm/packagelangpacks/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse2009 list(opts)

List package langpackss

PackageLangpacks ViewSet.

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

api_instance = PulpRpmClient::ContentPackagelangpacksApi.new

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
  #List package langpackss
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentPackagelangpacksApi->list: #{e}"
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

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmPackageLangpacks read(package_langpacks_href, opts)

Inspect a package langpacks

PackageLangpacks ViewSet.

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

api_instance = PulpRpmClient::ContentPackagelangpacksApi.new

package_langpacks_href = 'package_langpacks_href_example' # String | URI of Package Langpacks. e.g.: /pulp/api/v3/content/rpm/packagelangpacks/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a package langpacks
  result = api_instance.read(package_langpacks_href, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentPackagelangpacksApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_langpacks_href** | **String**| URI of Package Langpacks. e.g.: /pulp/api/v3/content/rpm/packagelangpacks/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmPackageLangpacks**](RpmPackageLangpacks.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



