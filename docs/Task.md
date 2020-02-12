# PulpRpmClient::Task

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pulp_href** | **String** |  | [optional] 
**pulp_created** | **DateTime** | Timestamp of creation. | [optional] 
**state** | **String** | The current state of the task. The possible values include: &#39;waiting&#39;, &#39;skipped&#39;, &#39;running&#39;, &#39;completed&#39;, &#39;failed&#39; and &#39;canceled&#39;. | [optional] 
**name** | **String** | The name of task. | 
**started_at** | **DateTime** | Timestamp of the when this task started execution. | [optional] 
**finished_at** | **DateTime** | Timestamp of the when this task stopped execution. | [optional] 
**error** | **Hash&lt;String, Object&gt;** | A JSON Object of a fatal error encountered during the execution of this task. | [optional] 
**worker** | **String** | The worker associated with this task. This field is empty if a worker is not yet assigned. | [optional] 
**progress_reports** | [**Array&lt;ProgressReport&gt;**](ProgressReport.md) |  | [optional] 
**created_resources** | **Array&lt;String&gt;** | Resources created by this task. | [optional] 
**reserved_resources_record** | [**Array&lt;ReservedResources&gt;**](ReservedResources.md) |  | [optional] 


