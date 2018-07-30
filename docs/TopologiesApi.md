# TelstraTPN::TopologiesApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoints_assign_topology_tag**](TopologiesApi.md#endpoints_assign_topology_tag) | **POST** /eis/1.0.0/endpoints/{endpointuuid}/assign_topology_tag | Assign an Endpoint to a Topology
[**endpoints_topology_tag_uuid**](TopologiesApi.md#endpoints_topology_tag_uuid) | **GET** /eis/1.0.0/endpoints/topology_tag_uuid/{topotaguuid} | List Endpoints for Topology
[**endpoints_topology_tag_uuid_endpoint**](TopologiesApi.md#endpoints_topology_tag_uuid_endpoint) | **DELETE** /eis/1.0.0/endpoints/topology_tag_uuid/{topotaguuid}/endpoint/{endpointuuid} | Remove Endpoint from a Topology
[**topology_tag_get**](TopologiesApi.md#topology_tag_get) | **GET** /ttms/1.0.0/topology_tag | List all topology tags
[**topology_tag_objects**](TopologiesApi.md#topology_tag_objects) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/objects/ | List objects for Topology
[**topology_tag_post**](TopologiesApi.md#topology_tag_post) | **POST** /ttms/1.0.0/topology_tag | Create a named topology tag
[**topology_tag_uuid_delete**](TopologiesApi.md#topology_tag_uuid_delete) | **DELETE** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Delete a topology tag
[**topology_tag_uuid_get**](TopologiesApi.md#topology_tag_uuid_get) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Get information about the specified topology tag
[**topology_tag_uuid_put**](TopologiesApi.md#topology_tag_uuid_put) | **PUT** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Update a topology tag&#39;s name and/or description


# **endpoints_assign_topology_tag**
> SuccessFragment endpoints_assign_topology_tag(endpointuuid, opts)

Assign an Endpoint to a Topology

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint
opts = {
  assigntopotagrequest: TelstraTPN::Assigntopotagrequest.new # Assigntopotagrequest | 
}

begin
  #Assign an Endpoint to a Topology
  result = api_instance.endpoints_assign_topology_tag(endpointuuid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->endpoints_assign_topology_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 
 **assigntopotagrequest** | [**Assigntopotagrequest**](Assigntopotagrequest.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **endpoints_topology_tag_uuid**
> InlineResponse20014 endpoints_topology_tag_uuid(topotaguuid)

List Endpoints for Topology

List all Endpoints associated with the topology tag.

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new
topotaguuid = 'topotaguuid_example' # String | Unique identifier representing a specific topology tag

begin
  #List Endpoints for Topology
  result = api_instance.endpoints_topology_tag_uuid(topotaguuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->endpoints_topology_tag_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **endpoints_topology_tag_uuid_endpoint**
> endpoints_topology_tag_uuid_endpoint(topotaguuid, endpointuuid)

Remove Endpoint from a Topology

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new
topotaguuid = 'topotaguuid_example' # String | Unique identifier representing a specific topology tag
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint

begin
  #Remove Endpoint from a Topology
  api_instance.endpoints_topology_tag_uuid_endpoint(topotaguuid, endpointuuid)
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->endpoints_topology_tag_uuid_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 

### Return type

nil (empty response body)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **topology_tag_get**
> Array&lt;Topology&gt; topology_tag_get

List all topology tags

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new

begin
  #List all topology tags
  result = api_instance.topology_tag_get
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->topology_tag_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Topology&gt;**](Topology.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **topology_tag_objects**
> InlineResponse20013 topology_tag_objects(topotaguuid)

List objects for Topology

List all objects (Endpoints, Links, VPorts, etc.) associated with the topology tag.

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new
topotaguuid = 'topotaguuid_example' # String | Unique identifier representing a specific topology tag

begin
  #List objects for Topology
  result = api_instance.topology_tag_objects(topotaguuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->topology_tag_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **topology_tag_post**
> Topology topology_tag_post(opts)

Create a named topology tag

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new
opts = {
  topotagcreaterequest: TelstraTPN::Topotagcreaterequest.new # Topotagcreaterequest | 
}

begin
  #Create a named topology tag
  result = api_instance.topology_tag_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->topology_tag_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotagcreaterequest** | [**Topotagcreaterequest**](Topotagcreaterequest.md)|  | [optional] 

### Return type

[**Topology**](Topology.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **topology_tag_uuid_delete**
> topology_tag_uuid_delete(topotaguuid)

Delete a topology tag

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new
topotaguuid = 'topotaguuid_example' # String | Unique identifier representing a specific topology tag

begin
  #Delete a topology tag
  api_instance.topology_tag_uuid_delete(topotaguuid)
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->topology_tag_uuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

nil (empty response body)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **topology_tag_uuid_get**
> Topology topology_tag_uuid_get(topotaguuid)

Get information about the specified topology tag

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new
topotaguuid = 'topotaguuid_example' # String | Unique identifier representing a specific topology tag

begin
  #Get information about the specified topology tag
  result = api_instance.topology_tag_uuid_get(topotaguuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->topology_tag_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

[**Topology**](Topology.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **topology_tag_uuid_put**
> Topology topology_tag_uuid_put(topotaguuid, opts)

Update a topology tag's name and/or description

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new
topotaguuid = 'topotaguuid_example' # String | Unique identifier representing a specific topology tag
opts = {
  topotagupdateresponse: TelstraTPN::Topotagupdateresponse.new # Topotagupdateresponse | 
}

begin
  #Update a topology tag's name and/or description
  result = api_instance.topology_tag_uuid_put(topotaguuid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->topology_tag_uuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 
 **topotagupdateresponse** | [**Topotagupdateresponse**](Topotagupdateresponse.md)|  | [optional] 

### Return type

[**Topology**](Topology.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



