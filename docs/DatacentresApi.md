# TelstraTPN::DatacentresApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**100_inventory_datacenters_get**](DatacentresApi.md#100_inventory_datacenters_get) | **GET** /1.0.0/inventory/datacenters | Get list of all the data centers


# **100_inventory_datacenters_get**
> Array&lt;Model100InventoryDatacentersResponse&gt; 100_inventory_datacenters_get

Get list of all the data centers

Get list of all the data centers

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::DatacentresApi.new

begin
  #Get list of all the data centers
  result = api_instance.100_inventory_datacenters_get
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling DatacentresApi->100_inventory_datacenters_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Model100InventoryDatacentersResponse&gt;**](Model100InventoryDatacentersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



