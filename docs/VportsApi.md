# TelstraTPN::VportsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_regularvport**](VportsApi.md#inventory_regularvport) | **POST** /1.0.0/inventory/regularvport | Create VPort for physical endpoint
[**inventory_vnf_vport**](VportsApi.md#inventory_vnf_vport) | **POST** /1.0.0/inventory/vnf/vport | Create VNF VPort
[**inventory_vport**](VportsApi.md#inventory_vport) | **GET** /1.0.0/inventory/vport/{vportuuid} | Get information about the specified VPort


# **inventory_regularvport**
> SuccessFragment inventory_regularvport(opts)

Create VPort for physical endpoint

Create VPort representing a VLAN on a Physical Ethernet Port

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VportsApi.new
opts = {
  regvportrequest: TelstraTPN::Regvportrequest.new # Regvportrequest | 
}

begin
  #Create VPort for physical endpoint
  result = api_instance.inventory_regularvport(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->inventory_regularvport: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regvportrequest** | [**Regvportrequest**](Regvportrequest.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_vnf_vport**
> InlineResponse2008 inventory_vnf_vport(opts)

Create VNF VPort

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VportsApi.new
opts = {
  vportrequest: TelstraTPN::Vportrequest.new # Vportrequest | 
}

begin
  #Create VNF VPort
  result = api_instance.inventory_vnf_vport(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->inventory_vnf_vport: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vportrequest** | [**Vportrequest**](Vportrequest.md)|  | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_vport**
> EndpointPort inventory_vport(vportuuid)

Get information about the specified VPort

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VportsApi.new
vportuuid = 'vportuuid_example' # String | Unique identifier representing a specific virtual port

begin
  #Get information about the specified VPort
  result = api_instance.inventory_vport(vportuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VportsApi->inventory_vport: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vportuuid** | **String**| Unique identifier representing a specific virtual port | 

### Return type

[**EndpointPort**](EndpointPort.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



