# PulpRpmClient::RpmUpdateRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pulp_href** | **String** |  | [optional] 
**pulp_created** | **DateTime** | Timestamp of creation. | [optional] 
**artifact** | **String** | Artifact file representing the physical content | [optional] 
**id** | **String** | Update id (short update name, e.g. RHEA-2013:1777) | [optional] 
**updated_date** | **String** | Date when the update was updated (e.g. &#39;2013-12-02 00:00:00&#39;) | [optional] 
**description** | **String** | Update description | [optional] 
**issued_date** | **String** | Date when the update was issued (e.g. &#39;2013-12-02 00:00:00&#39;) | [optional] 
**fromstr** | **String** | Source of the update (e.g. security@redhat.com) | [optional] 
**status** | **String** | Update status (&#39;final&#39;, ...) | [optional] 
**title** | **String** | Update name | [optional] 
**summary** | **String** | Short summary | [optional] 
**version** | **String** | Update version (probably always an integer number) | [optional] 
**type** | **String** | Update type (&#39;enhancement&#39;, &#39;bugfix&#39;, ...) | [optional] 
**severity** | **String** | Severity | [optional] 
**solution** | **String** | Solution | [optional] 
**release** | **String** | Update release | [optional] 
**rights** | **String** | Copyrights | [optional] 
**pushcount** | **String** | Push count | [optional] 
**pkglist** | [**Array&lt;RpmUpdateCollection&gt;**](RpmUpdateCollection.md) | List of packages | [optional] 
**references** | **Array&lt;Hash&lt;String, String&gt;&gt;** | List of references | [optional] 
**reboot_suggested** | **BOOLEAN** | Reboot suggested | [optional] 


