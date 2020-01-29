# SwaggerClient::RpmPackageGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pulp_href** | **String** |  | [optional] 
**pulp_created** | **DateTime** | Timestamp of creation. | [optional] 
**id** | **String** | PackageGroup id. | 
**default** | **BOOLEAN** | PackageGroup default. | [optional] 
**user_visible** | **BOOLEAN** | PackageGroup user visibility. | [optional] 
**display_order** | **Integer** | PackageGroup display order. | 
**name** | **String** | PackageGroup name. | 
**description** | **String** | PackageGroup description. | 
**packages** | **Object** | PackageGroup package list. | 
**biarch_only** | **BOOLEAN** | PackageGroup biarch only. | [optional] 
**desc_by_lang** | **Object** | PackageGroup description by language. | 
**name_by_lang** | **Object** | PackageGroup name by language. | 
**digest** | **String** | PackageGroup digest. | 
**related_packages** | **Array&lt;String&gt;** | Packages related to this PackageGroup. | [optional] 


