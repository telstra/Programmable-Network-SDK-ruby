# TelstraTPN::EndpointsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**100_inventory_endpoint_by_endpointuuid_get**](EndpointsApi.md#100_inventory_endpoint_by_endpointuuid_get) | **GET** /1.0.0/inventory/endpoint/{endpointuuid} | Get information about the specified endpoint
[**100_inventory_endpoints_customeruuid_by_customeruuid_get**](EndpointsApi.md#100_inventory_endpoints_customeruuid_by_customeruuid_get) | **GET** /1.0.0/inventory/endpoints/customeruuid/{customeruuid} | Get list of endpoints for a customer
[**100_inventory_regularendpoint_post**](EndpointsApi.md#100_inventory_regularendpoint_post) | **POST** /1.0.0/inventory/regularendpoint | Create Physical (Port) Endpoint
[**100_inventory_vnfendpoint_post**](EndpointsApi.md#100_inventory_vnfendpoint_post) | **POST** /1.0.0/inventory/vnfendpoint | Create VNF Endpoint
[**eis100_endpoints_assign_topology_tag_by_endpointuuid_post**](EndpointsApi.md#eis100_endpoints_assign_topology_tag_by_endpointuuid_post) | **POST** /eis/1.0.0/endpoints/{endpointuuid}/assign_topology_tag | Assign a Topology Tag to an Endpoint


# **100_inventory_endpoint_by_endpointuuid_get**
> Model100InventoryEndpointResponse 100_inventory_endpoint_by_endpointuuid_get(endpointuuid)

Get information about the specified endpoint

Get information about the specified endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::EndpointsApi.new

endpointuuid = "endpointuuid_example" # String | Unique identifier representing a specific endpoint


begin
  #Get information about the specified endpoint
  result = api_instance.100_inventory_endpoint_by_endpointuuid_get(endpointuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->100_inventory_endpoint_by_endpointuuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 

### Return type

[**Model100InventoryEndpointResponse**](Model100InventoryEndpointResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_endpoints_customeruuid_by_customeruuid_get**
> Model100InventoryEndpointsCustomeruuidResponse 100_inventory_endpoints_customeruuid_by_customeruuid_get(customeruuid)

Get list of endpoints for a customer

Get list of endpoints for a customer

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::EndpointsApi.new

customeruuid = "customeruuid_example" # String | Unique identifier representing a specific customer


begin
  #Get list of endpoints for a customer
  result = api_instance.100_inventory_endpoints_customeruuid_by_customeruuid_get(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->100_inventory_endpoints_customeruuid_by_customeruuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Model100InventoryEndpointsCustomeruuidResponse**](Model100InventoryEndpointsCustomeruuidResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_regularendpoint_post**
> Model100InventoryRegularendpointResponse 100_inventory_regularendpoint_post(opts)

Create Physical (Port) Endpoint

Create Physical (Port) Endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::EndpointsApi.new

opts = { 
  body: TelstraTPN::Model100InventoryRegularendpointRequest.new # Model100InventoryRegularendpointRequest | 
}

begin
  #Create Physical (Port) Endpoint
  result = api_instance.100_inventory_regularendpoint_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->100_inventory_regularendpoint_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryRegularendpointRequest**](Model100InventoryRegularendpointRequest.md)|  | [optional] 

### Return type

[**Model100InventoryRegularendpointResponse**](Model100InventoryRegularendpointResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_vnfendpoint_post**
> Model100InventoryVnfendpointResponse 100_inventory_vnfendpoint_post(opts)

Create VNF Endpoint

Create VNF Endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::EndpointsApi.new

opts = { 
  body: TelstraTPN::Model100InventoryVnfendpointRequest.new # Model100InventoryVnfendpointRequest | 
}

begin
  #Create VNF Endpoint
  result = api_instance.100_inventory_vnfendpoint_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->100_inventory_vnfendpoint_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryVnfendpointRequest**](Model100InventoryVnfendpointRequest.md)|  | [optional] 

### Return type

[**Model100InventoryVnfendpointResponse**](Model100InventoryVnfendpointResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eis100_endpoints_assign_topology_tag_by_endpointuuid_post**
> SuccessFragment eis100_endpoints_assign_topology_tag_by_endpointuuid_post(endpointuuid, opts)

Assign a Topology Tag to an Endpoint

Assign a Topology Tag to an Endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'

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

[**SuccessFragment**](SuccessFragment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



