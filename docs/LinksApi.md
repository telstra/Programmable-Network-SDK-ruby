# TelstraTPN::LinksApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_link_and_initial_contract**](LinksApi.md#create_link_and_initial_contract) | **POST** /1.0.0/inventory/link | Create Link and initial Contract
[**get_active_links**](LinksApi.md#get_active_links) | **GET** /1.0.0/inventory/links/customer/{customeruuid} | Get active Links
[**get_details_of_specified_link**](LinksApi.md#get_details_of_specified_link) | **GET** /1.0.0/inventory/links/{linkid} | Get details of specified link
[**get_link_history**](LinksApi.md#get_link_history) | **GET** /1.0.0/inventory/links/history/{linkid} | Get Link history


# **create_link_and_initial_contract**
> Model100InventoryLinkResponse create_link_and_initial_contract(opts)

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
  body: TelstraTPN::Model100InventoryLinkRequest.new # Model100InventoryLinkRequest | 
}

begin
  #Create Link and initial Contract
  result = api_instance.create_link_and_initial_contract(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->create_link_and_initial_contract: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Model100InventoryLinkRequest**](Model100InventoryLinkRequest.md)|  | [optional] 

### Return type

[**Model100InventoryLinkResponse**](Model100InventoryLinkResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_active_links**
> Array&lt;Link&gt; get_active_links(customeruuid)

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
  result = api_instance.get_active_links(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->get_active_links: #{e}"
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



# **get_details_of_specified_link**
> Model100InventoryLinksResponse get_details_of_specified_link(linkid)

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
  result = api_instance.get_details_of_specified_link(linkid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->get_details_of_specified_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 

### Return type

[**Model100InventoryLinksResponse**](Model100InventoryLinksResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_link_history**
> Model100InventoryLinksHistoryResponse get_link_history(linkid)

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
  result = api_instance.get_link_history(linkid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->get_link_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 

### Return type

[**Model100InventoryLinksHistoryResponse**](Model100InventoryLinksHistoryResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



