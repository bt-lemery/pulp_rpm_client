# PulpRpmClient::RpmRpmRemote

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pulp_href** | **String** |  | [optional] 
**pulp_created** | **DateTime** | Timestamp of creation. | [optional] 
**name** | **String** | A unique name for this remote. | 
**url** | **String** | The URL of an external content source. | 
**ca_cert** | **String** | A string containing the PEM encoded CA certificate used to validate the server certificate presented by the remote server. All new line characters must be escaped. Returns SHA256 sum on GET. | [optional] 
**client_cert** | **String** | A string containing the PEM encoded client certificate used for authentication. All new line characters must be escaped. Returns SHA256 sum on GET. | [optional] 
**client_key** | **String** | A PEM encoded private key used for authentication. Returns SHA256 sum on GET. | [optional] 
**tls_validation** | **BOOLEAN** | If True, TLS peer validation must be performed. | [optional] 
**proxy_url** | **String** | The proxy URL. Format: scheme://user:password@host:port | [optional] 
**pulp_last_updated** | **DateTime** | Timestamp of the most recent update of the remote. | [optional] 
**download_concurrency** | **Integer** | Total number of simultaneous connections. | [optional] 
**policy** | **String** | The policy to use when downloading content. The possible values include: &#39;immediate&#39;, &#39;on_demand&#39;, and &#39;streamed&#39;. &#39;immediate&#39; is the default. | [optional] [default to &#39;immediate&#39;]


