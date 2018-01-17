# TelstraTPN::LinksApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_link_post**](LinksApi.md#inventory_link_post) | **POST** /1.0.0/inventory/link | Create Link and initial Contract
[**inventory_links_by_linkid_get**](LinksApi.md#inventory_links_by_linkid_get) | **GET** /1.0.0/inventory/links/{linkid} | Get details of specified link
[**inventory_links_customer_by_customeruuid_get**](LinksApi.md#inventory_links_customer_by_customeruuid_get) | **GET** /1.0.0/inventory/links/customer/{customeruuid} | Get active Links
[**inventory_links_history_by_linkid_get**](LinksApi.md#inventory_links_history_by_linkid_get) | **GET** /1.0.0/inventory/links/history/{linkid} | Get Link history


# **inventory_link_post**
> InventoryLinkResponse inventory_link_post(opts)

Create Link and initial Contract

Create Link and initial Contract

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::LinksApi.new

opts = { 
  body: TelstraTPN::InventoryLinkRequest.new # InventoryLinkRequest | 
}

begin
  #Create Link and initial Contract
  result = api_instance.inventory_link_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->inventory_link_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryLinkRequest**](InventoryLinkRequest.md)|  | [optional] 

### Return type

[**InventoryLinkResponse**](InventoryLinkResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_links_by_linkid_get**
> InventoryLinksResponse inventory_links_by_linkid_get(linkid)

Get details of specified link

Get details of specified link

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::LinksApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link


begin
  #Get details of specified link
  result = api_instance.inventory_links_by_linkid_get(linkid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->inventory_links_by_linkid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 

### Return type

[**InventoryLinksResponse**](InventoryLinksResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_links_customer_by_customeruuid_get**
> Array&lt;Link&gt; inventory_links_customer_by_customeruuid_get(customeruuid)

Get active Links

Get active Links

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::LinksApi.new

customeruuid = "customeruuid_example" # String | Unique identifier representing a specific customer


begin
  #Get active Links
  result = api_instance.inventory_links_customer_by_customeruuid_get(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->inventory_links_customer_by_customeruuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Array&lt;Link&gt;**](Link.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_links_history_by_linkid_get**
> InventoryLinksHistoryResponse inventory_links_history_by_linkid_get(linkid)

Get Link history

Get Link history

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::LinksApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link


begin
  #Get Link history
  result = api_instance.inventory_links_history_by_linkid_get(linkid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->inventory_links_history_by_linkid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 

### Return type

[**InventoryLinksHistoryResponse**](InventoryLinksHistoryResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



