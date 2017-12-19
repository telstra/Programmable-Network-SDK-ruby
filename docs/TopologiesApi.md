# TelstraTPN::TopologiesApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ttms100_topology_tag_by_topotaguuid_delete**](TopologiesApi.md#ttms100_topology_tag_by_topotaguuid_delete) | **DELETE** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Delete a topology tag
[**ttms100_topology_tag_by_topotaguuid_get**](TopologiesApi.md#ttms100_topology_tag_by_topotaguuid_get) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Get information about the specified topology tag
[**ttms100_topology_tag_by_topotaguuid_put**](TopologiesApi.md#ttms100_topology_tag_by_topotaguuid_put) | **PUT** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Update a topology tag&#39;s name and/or description
[**ttms100_topology_tag_get**](TopologiesApi.md#ttms100_topology_tag_get) | **GET** /ttms/1.0.0/topology_tag | List all topology tags
[**ttms100_topology_tag_objects_by_topotaguuid_get**](TopologiesApi.md#ttms100_topology_tag_objects_by_topotaguuid_get) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/objects/ | List objects for Topology
[**ttms100_topology_tag_post**](TopologiesApi.md#ttms100_topology_tag_post) | **POST** /ttms/1.0.0/topology_tag | Create a named topology tag


# **ttms100_topology_tag_by_topotaguuid_delete**
> ttms100_topology_tag_by_topotaguuid_delete(topotaguuid)

Delete a topology tag

Delete a topology tag

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::TopologiesApi.new

topotaguuid = "topotaguuid_example" # String | Unique identifier representing a specific topology tag


begin
  #Delete a topology tag
  api_instance.ttms100_topology_tag_by_topotaguuid_delete(topotaguuid)
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->ttms100_topology_tag_by_topotaguuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ttms100_topology_tag_by_topotaguuid_get**
> Topology ttms100_topology_tag_by_topotaguuid_get(topotaguuid)

Get information about the specified topology tag

Get information about the specified topology tag

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::TopologiesApi.new

topotaguuid = "topotaguuid_example" # String | Unique identifier representing a specific topology tag


begin
  #Get information about the specified topology tag
  result = api_instance.ttms100_topology_tag_by_topotaguuid_get(topotaguuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->ttms100_topology_tag_by_topotaguuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

[**Topology**](Topology.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ttms100_topology_tag_by_topotaguuid_put**
> Topology ttms100_topology_tag_by_topotaguuid_put(topotaguuid, opts)

Update a topology tag's name and/or description

Update a topology tag's name and/or description

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::TopologiesApi.new

topotaguuid = "topotaguuid_example" # String | Unique identifier representing a specific topology tag

opts = { 
  body: TelstraTPN::Ttms100TopologyTagRequest.new # Ttms100TopologyTagRequest | 
}

begin
  #Update a topology tag's name and/or description
  result = api_instance.ttms100_topology_tag_by_topotaguuid_put(topotaguuid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->ttms100_topology_tag_by_topotaguuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 
 **body** | [**Ttms100TopologyTagRequest**](Ttms100TopologyTagRequest.md)|  | [optional] 

### Return type

[**Topology**](Topology.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ttms100_topology_tag_get**
> Array&lt;Topology&gt; ttms100_topology_tag_get

List all topology tags

List all topology tags

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::TopologiesApi.new

begin
  #List all topology tags
  result = api_instance.ttms100_topology_tag_get
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->ttms100_topology_tag_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Topology&gt;**](Topology.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ttms100_topology_tag_objects_by_topotaguuid_get**
> Ttms100TopologyTagObjectsResponse ttms100_topology_tag_objects_by_topotaguuid_get(topotaguuid)

List objects for Topology

List all objects (Endpoints, Links, VPorts, etc.) associated with the topology tag.

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::TopologiesApi.new

topotaguuid = "topotaguuid_example" # String | Unique identifier representing a specific topology tag


begin
  #List objects for Topology
  result = api_instance.ttms100_topology_tag_objects_by_topotaguuid_get(topotaguuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->ttms100_topology_tag_objects_by_topotaguuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

[**Ttms100TopologyTagObjectsResponse**](Ttms100TopologyTagObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ttms100_topology_tag_post**
> Topology ttms100_topology_tag_post(opts)

Create a named topology tag

Create a named topology tag

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::TopologiesApi.new

opts = { 
  body: TelstraTPN::Ttms100TopologyTagRequest.new # Ttms100TopologyTagRequest | 
}

begin
  #Create a named topology tag
  result = api_instance.ttms100_topology_tag_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->ttms100_topology_tag_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Ttms100TopologyTagRequest**](Ttms100TopologyTagRequest.md)|  | [optional] 

### Return type

[**Topology**](Topology.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



