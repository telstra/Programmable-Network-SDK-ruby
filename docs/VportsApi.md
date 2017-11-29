# TelstraTPN::VportsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_v_port_for_physical_endpoint**](VportsApi.md#create_v_port_for_physical_endpoint) | **POST** /1.0.0/inventory/regularvport | Create VPort for physical endpoint
[**create_vnf_v_port**](VportsApi.md#create_vnf_v_port) | **POST** /1.0.0/inventory/vnf/vport | Create VNF VPort
[**get_information_about_the_specified_v_port**](VportsApi.md#get_information_about_the_specified_v_port) | **GET** /1.0.0/inventory/vport/{vportuuid} | Get information about the specified VPort


# **create_v_port_for_physical_endpoint**
> Model100InventoryRegularvportResponse create_v_port_for_physical_endpoint(opts)

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
  body: TelstraTPN::Model100InventoryRegularvportRequest.new # Model100InventoryRegularvportRequest | 
}

begin
  #Create VPort for physical endpoint
  result = api_instance.create_v_port_for_physical_endpoint(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->create_v_port_for_physical_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryRegularvportRequest**](Model100InventoryRegularvportRequest.md)|  | [optional] 

### Return type

[**Model100InventoryRegularvportResponse**](Model100InventoryRegularvportResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_vnf_v_port**
> Model100InventoryVnfVportResponse create_vnf_v_port(opts)

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
  body: TelstraTPN::Model100InventoryVnfVportRequest.new # Model100InventoryVnfVportRequest | 
}

begin
  #Create VNF VPort
  result = api_instance.create_vnf_v_port(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->create_vnf_v_port: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryVnfVportRequest**](Model100InventoryVnfVportRequest.md)|  | [optional] 

### Return type

[**Model100InventoryVnfVportResponse**](Model100InventoryVnfVportResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_information_about_the_specified_v_port**
> EndpointPort get_information_about_the_specified_v_port(vportuuid)

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
  result = api_instance.get_information_about_the_specified_v_port(vportuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->get_information_about_the_specified_v_port: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vportuuid** | **String**| Unique identifier representing a specific virtual port | 

### Return type

[**EndpointPort**](EndpointPort.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



