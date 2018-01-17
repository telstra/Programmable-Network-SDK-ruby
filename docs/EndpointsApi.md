# TelstraTPN::EndpointsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eis100_endpoints_assign_topology_tag_by_endpointuuid_post**](EndpointsApi.md#eis100_endpoints_assign_topology_tag_by_endpointuuid_post) | **POST** /eis/1.0.0/endpoints/{endpointuuid}/assign_topology_tag | Assign a Topology Tag to an Endpoint
[**inventory_endpoint_by_endpointuuid_get**](EndpointsApi.md#inventory_endpoint_by_endpointuuid_get) | **GET** /1.0.0/inventory/endpoint/{endpointuuid} | Get information about the specified endpoint
[**inventory_endpoints_customeruuid_by_customeruuid_get**](EndpointsApi.md#inventory_endpoints_customeruuid_by_customeruuid_get) | **GET** /1.0.0/inventory/endpoints/customeruuid/{customeruuid} | Get list of endpoints for a customer
[**inventory_regularendpoint_post**](EndpointsApi.md#inventory_regularendpoint_post) | **POST** /1.0.0/inventory/regularendpoint | Create Physical (Port) Endpoint
[**inventory_vnfendpoint_post**](EndpointsApi.md#inventory_vnfendpoint_post) | **POST** /1.0.0/inventory/vnfendpoint | Create VNF Endpoint


# **eis100_endpoints_assign_topology_tag_by_endpointuuid_post**
> Array&lt;SuccessFragment&gt; eis100_endpoints_assign_topology_tag_by_endpointuuid_post(endpointuuid, opts)

Assign a Topology Tag to an Endpoint

Assign a Topology Tag to an Endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new

endpointuuid = "endpointuuid_example" # String | Unique identifier representing a specific endpoint

opts = { 
  body: TelstraTPN::Eis100EndpointsAssignTopologyTagRequest.new # Eis100EndpointsAssignTopologyTagRequest | 
}

begin
  #Assign a Topology Tag to an Endpoint
  result = api_instance.eis100_endpoints_assign_topology_tag_by_endpointuuid_post(endpointuuid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->eis100_endpoints_assign_topology_tag_by_endpointuuid_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 
 **body** | [**Eis100EndpointsAssignTopologyTagRequest**](Eis100EndpointsAssignTopologyTagRequest.md)|  | [optional] 

### Return type

[**Array&lt;SuccessFragment&gt;**](SuccessFragment.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_endpoint_by_endpointuuid_get**
> InventoryEndpointResponse inventory_endpoint_by_endpointuuid_get(endpointuuid)

Get information about the specified endpoint

Get information about the specified endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new

endpointuuid = "endpointuuid_example" # String | Unique identifier representing a specific endpoint


begin
  #Get information about the specified endpoint
  result = api_instance.inventory_endpoint_by_endpointuuid_get(endpointuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_endpoint_by_endpointuuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 

### Return type

[**InventoryEndpointResponse**](InventoryEndpointResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_endpoints_customeruuid_by_customeruuid_get**
> InventoryEndpointsCustomeruuidResponse inventory_endpoints_customeruuid_by_customeruuid_get(customeruuid)

Get list of endpoints for a customer

Get list of endpoints for a customer

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new

customeruuid = "customeruuid_example" # String | Unique identifier representing a specific customer


begin
  #Get list of endpoints for a customer
  result = api_instance.inventory_endpoints_customeruuid_by_customeruuid_get(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_endpoints_customeruuid_by_customeruuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**InventoryEndpointsCustomeruuidResponse**](InventoryEndpointsCustomeruuidResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_regularendpoint_post**
> Array&lt;InventoryRegularendpointResponse&gt; inventory_regularendpoint_post(opts)

Create Physical (Port) Endpoint

Create Physical (Port) Endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new

opts = { 
  body: TelstraTPN::InventoryRegularendpointRequest.new # InventoryRegularendpointRequest | 
}

begin
  #Create Physical (Port) Endpoint
  result = api_instance.inventory_regularendpoint_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_regularendpoint_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryRegularendpointRequest**](InventoryRegularendpointRequest.md)|  | [optional] 

### Return type

[**Array&lt;InventoryRegularendpointResponse&gt;**](InventoryRegularendpointResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_vnfendpoint_post**
> Array&lt;InventoryVnfendpointResponse&gt; inventory_vnfendpoint_post(opts)

Create VNF Endpoint

Create VNF Endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new

opts = { 
  body: TelstraTPN::InventoryVnfendpointRequest.new # InventoryVnfendpointRequest | 
}

begin
  #Create VNF Endpoint
  result = api_instance.inventory_vnfendpoint_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_vnfendpoint_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryVnfendpointRequest**](InventoryVnfendpointRequest.md)|  | [optional] 

### Return type

[**Array&lt;InventoryVnfendpointResponse&gt;**](InventoryVnfendpointResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



