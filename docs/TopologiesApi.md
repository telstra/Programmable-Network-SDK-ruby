# TelstraTPN::TopologiesApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_a_named_topology_tag**](TopologiesApi.md#create_a_named_topology_tag) | **POST** /ttms/1.0.0/topology_tag | Create a named topology tag
[**get_information_about_the_specified_topology_tag**](TopologiesApi.md#get_information_about_the_specified_topology_tag) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Get information about the specified topology tag
[**list_all_topology_tags**](TopologiesApi.md#list_all_topology_tags) | **GET** /ttms/1.0.0/topology_tag | List all topology tags
[**list_objects_for_topology**](TopologiesApi.md#list_objects_for_topology) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/objects/ | List objects for Topology


# **create_a_named_topology_tag**
> Topology create_a_named_topology_tag(opts)

Create a named topology tag

Create a named topology tag

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new

opts = { 
  body: TelstraTPN::Ttms100TopologyTagRequest.new # Ttms100TopologyTagRequest | 
}

begin
  #Create a named topology tag
  result = api_instance.create_a_named_topology_tag(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->create_a_named_topology_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Ttms100TopologyTagRequest**](Ttms100TopologyTagRequest.md)|  | [optional] 

### Return type

[**Topology**](Topology.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_information_about_the_specified_topology_tag**
> Topology get_information_about_the_specified_topology_tag(topotaguuid)

Get information about the specified topology tag

Get information about the specified topology tag

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new

topotaguuid = "topotaguuid_example" # String | Unique identifier representing a specific topology tag


begin
  #Get information about the specified topology tag
  result = api_instance.get_information_about_the_specified_topology_tag(topotaguuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->get_information_about_the_specified_topology_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

[**Topology**](Topology.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_all_topology_tags**
> Array&lt;Topology&gt; list_all_topology_tags

List all topology tags

List all topology tags

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new

begin
  #List all topology tags
  result = api_instance.list_all_topology_tags
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->list_all_topology_tags: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Topology&gt;**](Topology.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_objects_for_topology**
> Ttms100TopologyTagObjectsResponse list_objects_for_topology(topotaguuid)

List objects for Topology

List all objects (Endpoints, Links, VPorts, etc.) associated with the topology tag.

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::TopologiesApi.new

topotaguuid = "topotaguuid_example" # String | Unique identifier representing a specific topology tag


begin
  #List objects for Topology
  result = api_instance.list_objects_for_topology(topotaguuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling TopologiesApi->list_objects_for_topology: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

[**Ttms100TopologyTagObjectsResponse**](Ttms100TopologyTagObjectsResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



