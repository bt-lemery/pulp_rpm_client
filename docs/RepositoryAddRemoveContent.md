# SwaggerClient::RepositoryAddRemoveContent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add_content_units** | **Array&lt;String&gt;** | A list of content units to add to a new repository version. This content is added after remove_content_units are removed. | [optional] 
**remove_content_units** | **Array&lt;String&gt;** | A list of content units to remove from the latest repository version. You may also specify &#39;*&#39; as an entry to remove all content. This content is removed before add_content_units are added. | [optional] 
**base_version** | **String** | A repository version whose content will be used as the initial set of content for the new repository version | [optional] 


