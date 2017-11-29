# TelstraTPN::DatacentresApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_list_of_all_the_data_centers**](DatacentresApi.md#get_list_of_all_the_data_centers) | **GET** /1.0.0/inventory/datacenters | Get list of all the data centers


# **get_list_of_all_the_data_centers**
> Array&lt;Model100InventoryDatacentersResponse&gt; get_list_of_all_the_data_centers

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
  result = api_instance.get_list_of_all_the_data_centers
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling DatacentresApi->get_list_of_all_the_data_centers: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Model100InventoryDatacentersResponse&gt;**](Model100InventoryDatacentersResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



