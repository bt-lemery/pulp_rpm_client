# SwaggerClient::RpmDistributionTree

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pulp_href** | **String** |  | [optional] 
**header_version** | **String** | Header Version. | 
**release_name** | **String** | Release name. | 
**release_short** | **String** | Release short name. | 
**release_version** | **String** | Release version. | 
**release_is_layered** | **BOOLEAN** | Typically False for an operating system, True otherwise. | 
**base_product_name** | **String** | Base Product name. | 
**base_product_short** | **String** | Base Product short name. | 
**base_product_version** | **String** | Base Product version. | 
**arch** | **String** | Tree architecturerch. | 
**build_timestamp** | **Float** | Tree build time timestamp. | 
**instimage** | **String** | Relative path to Anaconda instimage. | 
**mainimage** | **String** | Relative path to Anaconda stage2 image. | 
**discnum** | **Integer** | Disc number. | 
**totaldiscs** | **Integer** | Number of discs in media set. | 
**addons** | [**Array&lt;Addon&gt;**](Addon.md) |  | 
**checksums** | [**Array&lt;Checksum&gt;**](Checksum.md) |  | 
**images** | [**Array&lt;Image&gt;**](Image.md) |  | 
**variants** | [**Array&lt;Variant&gt;**](Variant.md) |  | 


