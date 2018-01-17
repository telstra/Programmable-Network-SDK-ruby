# TelstraTPN::VnfsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketplace_image_get**](VnfsApi.md#marketplace_image_get) | **GET** /1.0.0/marketplace/image | List images in the Marketplace


# **marketplace_image_get**
> MarketplaceImageResponse marketplace_image_get

List images in the Marketplace

List images in the Marketplace

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new

begin
  #List images in the Marketplace
  result = api_instance.marketplace_image_get
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->marketplace_image_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MarketplaceImageResponse**](MarketplaceImageResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



