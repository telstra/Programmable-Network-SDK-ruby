# TelstraTPN::EndpointsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_physical__port_endpoint**](EndpointsApi.md#create_physical__port_endpoint) | **POST** /1.0.0/inventory/regularendpoint | Create Physical (Port) Endpoint
[**create_vnf_endpoint**](EndpointsApi.md#create_vnf_endpoint) | **POST** /1.0.0/inventory/vnfendpoint | Create VNF Endpoint
[**get_information_about_the_specified_endpoint**](EndpointsApi.md#get_information_about_the_specified_endpoint) | **GET** /1.0.0/inventory/endpoint/{endpointuuid} | Get information about the specified endpoint
[**get_list_of_endpoints_for_a_customer**](EndpointsApi.md#get_list_of_endpoints_for_a_customer) | **GET** /1.0.0/inventory/endpoints/customeruuid/{customeruuid} | Get list of endpoints for a customer


# **create_physical__port_endpoint**
> Model100InventoryRegularendpointResponse create_physical__port_endpoint(opts)

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
  body: TelstraTPN::Model100InventoryRegularendpointRequest.new # Model100InventoryRegularendpointRequest | 
}

begin
  #Create Physical (Port) Endpoint
  result = api_instance.create_physical__port_endpoint(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->create_physical__port_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryRegularendpointRequest**](Model100InventoryRegularendpointRequest.md)|  | [optional] 

### Return type

[**Model100InventoryRegularendpointResponse**](Model100InventoryRegularendpointResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_vnf_endpoint**
> Model100InventoryVnfendpointResponse create_vnf_endpoint(opts)

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
  body: TelstraTPN::Model100InventoryVnfendpointRequest.new # Model100InventoryVnfendpointRequest | 
}

begin
  #Create VNF Endpoint
  result = api_instance.create_vnf_endpoint(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->create_vnf_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryVnfendpointRequest**](Model100InventoryVnfendpointRequest.md)|  | [optional] 

### Return type

[**Model100InventoryVnfendpointResponse**](Model100InventoryVnfendpointResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_information_about_the_specified_endpoint**
> Model100InventoryEndpointResponse get_information_about_the_specified_endpoint(endpointuuid)

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
  result = api_instance.get_information_about_the_specified_endpoint(endpointuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->get_information_about_the_specified_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 

### Return type

[**Model100InventoryEndpointResponse**](Model100InventoryEndpointResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_list_of_endpoints_for_a_customer**
> Model100InventoryEndpointsCustomeruuidResponse get_list_of_endpoints_for_a_customer(customeruuid)

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
  result = api_instance.get_list_of_endpoints_for_a_customer(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->get_list_of_endpoints_for_a_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Model100InventoryEndpointsCustomeruuidResponse**](Model100InventoryEndpointsCustomeruuidResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



