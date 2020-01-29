# SwaggerClient::ProgressReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | The message shown to the user for the progress report. | [optional] 
**code** | **String** | Identifies the type of progress report&#39;. | [optional] 
**state** | **String** | The current state of the progress report. The possible values are: &#39;waiting&#39;, &#39;skipped&#39;, &#39;running&#39;, &#39;completed&#39;, &#39;failed&#39; and &#39;canceled&#39;. The default is &#39;waiting&#39;. | [optional] 
**total** | **Integer** | The total count of items. | [optional] 
**done** | **Integer** | The count of items already processed. Defaults to 0. | [optional] 
**suffix** | **String** | The suffix to be shown with the progress report. | [optional] 


