# PulpRpmClient::ContentDistributionTreesApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](ContentDistributionTreesApi.md#delete) | **DELETE** {distribution_tree_href} | Delete a distribution tree
[**list**](ContentDistributionTreesApi.md#list) | **GET** /pulp/api/v3/content/rpm/distribution_trees/ | List distribution trees
[**read**](ContentDistributionTreesApi.md#read) | **GET** {distribution_tree_href} | Inspect a distribution tree


# **delete**
> delete(distribution_tree_href)

Delete a distribution tree

Distribution Tree Viewset.

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

api_instance = PulpRpmClient::ContentDistributionTreesApi.new

distribution_tree_href = 'distribution_tree_href_example' # String | URI of Distribution Tree. e.g.: /pulp/api/v3/content/rpm/distribution_trees/1/


begin
  #Delete a distribution tree
  api_instance.delete(distribution_tree_href)
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentDistributionTreesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **distribution_tree_href** | **String**| URI of Distribution Tree. e.g.: /pulp/api/v3/content/rpm/distribution_trees/1/ | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> InlineResponse2003 list(opts)

List distribution trees

Distribution Tree Viewset.

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

api_instance = PulpRpmClient::ContentDistributionTreesApi.new

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
  #List distribution trees
  result = api_instance.list(opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentDistributionTreesApi->list: #{e}"
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

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read**
> RpmDistributionTree read(distribution_tree_href, opts)

Inspect a distribution tree

Distribution Tree Viewset.

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

api_instance = PulpRpmClient::ContentDistributionTreesApi.new

distribution_tree_href = 'distribution_tree_href_example' # String | URI of Distribution Tree. e.g.: /pulp/api/v3/content/rpm/distribution_trees/1/

opts = { 
  fields: 'fields_example', # String | A list of fields to include in the response.
  exclude_fields: 'exclude_fields_example' # String | A list of fields to exclude from the response.
}

begin
  #Inspect a distribution tree
  result = api_instance.read(distribution_tree_href, opts)
  p result
rescue PulpRpmClient::ApiError => e
  puts "Exception when calling ContentDistributionTreesApi->read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **distribution_tree_href** | **String**| URI of Distribution Tree. e.g.: /pulp/api/v3/content/rpm/distribution_trees/1/ | 
 **fields** | **String**| A list of fields to include in the response. | [optional] 
 **exclude_fields** | **String**| A list of fields to exclude from the response. | [optional] 

### Return type

[**RpmDistributionTree**](RpmDistributionTree.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



