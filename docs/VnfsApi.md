# TelstraTPN::VnfsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_images_in_the_marketplace**](VnfsApi.md#list_images_in_the_marketplace) | **GET** /1.0.0/marketplace/image | List images in the Marketplace


# **list_images_in_the_marketplace**
> Model100MarketplaceImageResponse list_images_in_the_marketplace

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
  result = api_instance.list_images_in_the_marketplace
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->list_images_in_the_marketplace: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Model100MarketplaceImageResponse**](Model100MarketplaceImageResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



