# PulpRpmClient::Status

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**versions** | [**Array&lt;Version&gt;**](Version.md) | Version information of Pulp components | 
**online_workers** | [**Array&lt;Worker&gt;**](Worker.md) | List of online workers known to the application. An online worker is actively heartbeating and can respond to new work | 
**online_content_apps** | [**Array&lt;ContentAppStatus&gt;**](ContentAppStatus.md) | List of online content apps known to the application. An online content app is actively heartbeating and can serve data to clients | 
**database_connection** | [**DatabaseConnection**](DatabaseConnection.md) |  | 
**redis_connection** | [**RedisConnection**](RedisConnection.md) |  | 
**storage** | [**Storage**](Storage.md) |  | [optional] 


