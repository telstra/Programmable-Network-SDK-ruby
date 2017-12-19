# TelstraTPN::VportsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**100_inventory_regularvport_post**](VportsApi.md#100_inventory_regularvport_post) | **POST** /1.0.0/inventory/regularvport | Create VPort for physical endpoint
[**100_inventory_vnf_vport_post**](VportsApi.md#100_inventory_vnf_vport_post) | **POST** /1.0.0/inventory/vnf/vport | Create VNF VPort
[**100_inventory_vport_by_vportuuid_get**](VportsApi.md#100_inventory_vport_by_vportuuid_get) | **GET** /1.0.0/inventory/vport/{vportuuid} | Get information about the specified VPort


# **100_inventory_regularvport_post**
> Model100InventoryRegularvportResponse 100_inventory_regularvport_post(opts)

Create VPort for physical endpoint

Create VPort representing a VLAN on a Physical Ethernet Port

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::VportsApi.new

opts = { 
  body: TelstraTPN::Model100InventoryRegularvportRequest.new # Model100InventoryRegularvportRequest | 
}

begin
  #Create VPort for physical endpoint
  result = api_instance.100_inventory_regularvport_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->100_inventory_regularvport_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryRegularvportRequest**](Model100InventoryRegularvportRequest.md)|  | [optional] 

### Return type

[**Model100InventoryRegularvportResponse**](Model100InventoryRegularvportResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_vnf_vport_post**
> Model100InventoryVnfVportResponse 100_inventory_vnf_vport_post(opts)

Create VNF VPort

Create VNF VPort

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::VportsApi.new

opts = { 
  body: TelstraTPN::Model100InventoryVnfVportRequest.new # Model100InventoryVnfVportRequest | 
}

begin
  #Create VNF VPort
  result = api_instance.100_inventory_vnf_vport_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->100_inventory_vnf_vport_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryVnfVportRequest**](Model100InventoryVnfVportRequest.md)|  | [optional] 

### Return type

[**Model100InventoryVnfVportResponse**](Model100InventoryVnfVportResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_vport_by_vportuuid_get**
> EndpointPort 100_inventory_vport_by_vportuuid_get(vportuuid)

Get information about the specified VPort

Get information about the specified VPort

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::VportsApi.new

vportuuid = "vportuuid_example" # String | Unique identifier representing a specific virtual port


begin
  #Get information about the specified VPort
  result = api_instance.100_inventory_vport_by_vportuuid_get(vportuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->100_inventory_vport_by_vportuuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vportuuid** | **String**| Unique identifier representing a specific virtual port | 

### Return type

[**EndpointPort**](EndpointPort.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



