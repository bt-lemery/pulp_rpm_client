# PulpRpmClient::FileFilePublication

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pulp_href** | **String** |  | [optional] 
**pulp_created** | **DateTime** | Timestamp of creation. | [optional] 
**repository_version** | **String** |  | [optional] 
**repository** | **String** | A URI of the repository to be published. | [optional] 
**distributions** | **Array&lt;String&gt;** | This publication is currently hosted as defined by these distributions. | [optional] 
**manifest** | **String** | Filename to use for manifest file containing metadata for all the files. | [optional] [default to &#39;PULP_MANIFEST&#39;]


