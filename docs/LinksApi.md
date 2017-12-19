# TelstraTPN::LinksApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**100_inventory_link_post**](LinksApi.md#100_inventory_link_post) | **POST** /1.0.0/inventory/link | Create Link and initial Contract
[**100_inventory_links_by_linkid_get**](LinksApi.md#100_inventory_links_by_linkid_get) | **GET** /1.0.0/inventory/links/{linkid} | Get details of specified link
[**100_inventory_links_customer_by_customeruuid_get**](LinksApi.md#100_inventory_links_customer_by_customeruuid_get) | **GET** /1.0.0/inventory/links/customer/{customeruuid} | Get active Links
[**100_inventory_links_history_by_linkid_get**](LinksApi.md#100_inventory_links_history_by_linkid_get) | **GET** /1.0.0/inventory/links/history/{linkid} | Get Link history


# **100_inventory_link_post**
> Model100InventoryLinkResponse 100_inventory_link_post(opts)

Create Link and initial Contract

Create Link and initial Contract

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::LinksApi.new

opts = { 
  body: TelstraTPN::Model100InventoryLinkRequest.new # Model100InventoryLinkRequest | 
}

begin
  #Create Link and initial Contract
  result = api_instance.100_inventory_link_post(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->100_inventory_link_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryLinkRequest**](Model100InventoryLinkRequest.md)|  | [optional] 

### Return type

[**Model100InventoryLinkResponse**](Model100InventoryLinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_links_by_linkid_get**
> Model100InventoryLinksResponse 100_inventory_links_by_linkid_get(linkid)

Get details of specified link

Get details of specified link

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::LinksApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link


begin
  #Get details of specified link
  result = api_instance.100_inventory_links_by_linkid_get(linkid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->100_inventory_links_by_linkid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 

### Return type

[**Model100InventoryLinksResponse**](Model100InventoryLinksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_links_customer_by_customeruuid_get**
> Array&lt;Link&gt; 100_inventory_links_customer_by_customeruuid_get(customeruuid)

Get active Links

Get active Links

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::LinksApi.new

customeruuid = "customeruuid_example" # String | Unique identifier representing a specific customer


begin
  #Get active Links
  result = api_instance.100_inventory_links_customer_by_customeruuid_get(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->100_inventory_links_customer_by_customeruuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Array&lt;Link&gt;**](Link.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_links_history_by_linkid_get**
> Model100InventoryLinksHistoryResponse 100_inventory_links_history_by_linkid_get(linkid)

Get Link history

Get Link history

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::LinksApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link


begin
  #Get Link history
  result = api_instance.100_inventory_links_history_by_linkid_get(linkid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->100_inventory_links_history_by_linkid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 

### Return type

[**Model100InventoryLinksHistoryResponse**](Model100InventoryLinksHistoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



