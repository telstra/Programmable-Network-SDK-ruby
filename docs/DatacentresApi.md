# TelstraTPN::DatacentresApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_datacenters_get**](DatacentresApi.md#inventory_datacenters_get) | **GET** /1.0.0/inventory/datacenters | Get list of all the data centers


# **inventory_datacenters_get**
> Array&lt;InventoryDatacentersResponse&gt; inventory_datacenters_get

Get list of all the data centers

Get list of all the data centers

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::DatacentresApi.new

begin
  #Get list of all the data centers
  result = api_instance.inventory_datacenters_get
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling DatacentresApi->inventory_datacenters_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;InventoryDatacentersResponse&gt;**](InventoryDatacentersResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



