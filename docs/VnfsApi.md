# TelstraTPN::VnfsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**100_marketplace_image_get**](VnfsApi.md#100_marketplace_image_get) | **GET** /1.0.0/marketplace/image | List images in the Marketplace


# **100_marketplace_image_get**
> Model100MarketplaceImageResponse 100_marketplace_image_get

List images in the Marketplace

List images in the Marketplace

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::VnfsApi.new

begin
  #List images in the Marketplace
  result = api_instance.100_marketplace_image_get
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->100_marketplace_image_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Model100MarketplaceImageResponse**](Model100MarketplaceImageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



