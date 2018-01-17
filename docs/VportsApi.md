# TelstraTPN::VportsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_regularvport_post**](VportsApi.md#inventory_regularvport_post) | **POST** /1.0.0/inventory/regularvport | Create VPort for physical endpoint
[**inventory_vnf_vport_post**](VportsApi.md#inventory_vnf_vport_post) | **POST** /1.0.0/inventory/vnf/vport | Create VNF VPort
[**inventory_vport_by_vportuuid_get**](VportsApi.md#inventory_vport_by_vportuuid_get) | **GET** /1.0.0/inventory/vport/{vportuuid} | Get information about the specified VPort


# **inventory_regularvport_post**
> InventoryRegularvportResponse inventory_regularvport_post(opts)

Create VPort for physical endpoint

Create VPort representing a VLAN on a Physical Ethernet Port

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VportsApi.new

opts = { 
  body: TelstraTPN::InventoryRegularvportRequest.new # InventoryRegularvportRequest | 
}

begin
  #Create VPort for physical endpoint
  result = api_instance.inventory_regularvport_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->inventory_regularvport_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryRegularvportRequest**](InventoryRegularvportRequest.md)|  | [optional] 

### Return type

[**InventoryRegularvportResponse**](InventoryRegularvportResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_vnf_vport_post**
> InventoryVnfVportResponse inventory_vnf_vport_post(opts)

Create VNF VPort

Create VNF VPort

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VportsApi.new

opts = { 
  body: TelstraTPN::InventoryVnfVportRequest.new # InventoryVnfVportRequest | 
}

begin
  #Create VNF VPort
  result = api_instance.inventory_vnf_vport_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->inventory_vnf_vport_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryVnfVportRequest**](InventoryVnfVportRequest.md)|  | [optional] 

### Return type

[**InventoryVnfVportResponse**](InventoryVnfVportResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_vport_by_vportuuid_get**
> Array&lt;EndpointPort&gt; inventory_vport_by_vportuuid_get(vportuuid)

Get information about the specified VPort

Get information about the specified VPort

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VportsApi.new

vportuuid = "vportuuid_example" # String | Unique identifier representing a specific virtual port


begin
  #Get information about the specified VPort
  result = api_instance.inventory_vport_by_vportuuid_get(vportuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->inventory_vport_by_vportuuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vportuuid** | **String**| Unique identifier representing a specific virtual port | 

### Return type

[**Array&lt;EndpointPort&gt;**](EndpointPort.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



