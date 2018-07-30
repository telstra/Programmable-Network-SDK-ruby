# TelstraTPN::DatacentresApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_datacentres**](DatacentresApi.md#inventory_datacentres) | **GET** /1.0.0/inventory/datacenters | Get list of all the data centers


# **inventory_datacentres**
> InlineResponse200 inventory_datacentres

Get list of all the data centers

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::DatacentresApi.new

begin
  #Get list of all the data centers
  result = api_instance.inventory_datacentres
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling DatacentresApi->inventory_datacentres: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, 



