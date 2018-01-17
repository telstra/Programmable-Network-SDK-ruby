# TelstraTPN::ContractsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_links_contract_by_linkid_and_contractid_get**](ContractsApi.md#inventory_links_contract_by_linkid_and_contractid_get) | **GET** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Get active Contract by ContractID
[**inventory_links_contract_by_linkid_and_contractid_put**](ContractsApi.md#inventory_links_contract_by_linkid_and_contractid_put) | **PUT** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Update active Contract by ContractID
[**inventory_links_contract_by_linkid_post**](ContractsApi.md#inventory_links_contract_by_linkid_post) | **POST** /1.0.0/inventory/links/{linkid}/contract | Create new Contract on specified link


# **inventory_links_contract_by_linkid_and_contractid_get**
> InventoryLinksContractResponse inventory_links_contract_by_linkid_and_contractid_get(linkid, contractid)

Get active Contract by ContractID

Get active Contract by ContractID

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ContractsApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link

contractid = "contractid_example" # String | Unique identifier representing a specific contract


begin
  #Get active Contract by ContractID
  result = api_instance.inventory_links_contract_by_linkid_and_contractid_get(linkid, contractid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->inventory_links_contract_by_linkid_and_contractid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **contractid** | **String**| Unique identifier representing a specific contract | 

### Return type

[**InventoryLinksContractResponse**](InventoryLinksContractResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_links_contract_by_linkid_and_contractid_put**
> InventoryLinksContractResponse33 inventory_links_contract_by_linkid_and_contractid_put(linkid, contractid, opts)

Update active Contract by ContractID

Update active Contract by ContractID

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ContractsApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link

contractid = "contractid_example" # String | Unique identifier representing a specific contract

opts = { 
  body: TelstraTPN::InventoryLinksContractRequest.new # InventoryLinksContractRequest | 
}

begin
  #Update active Contract by ContractID
  result = api_instance.inventory_links_contract_by_linkid_and_contractid_put(linkid, contractid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->inventory_links_contract_by_linkid_and_contractid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **contractid** | **String**| Unique identifier representing a specific contract | 
 **body** | [**InventoryLinksContractRequest**](InventoryLinksContractRequest.md)|  | [optional] 

### Return type

[**InventoryLinksContractResponse33**](InventoryLinksContractResponse33.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_links_contract_by_linkid_post**
> Array&lt;InventoryLinksContractResponse38&gt; inventory_links_contract_by_linkid_post(linkid, opts)

Create new Contract on specified link

Create new Contract on specified link

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ContractsApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link

opts = { 
  body: TelstraTPN::InventoryLinksContractRequest37.new # InventoryLinksContractRequest37 | 
}

begin
  #Create new Contract on specified link
  result = api_instance.inventory_links_contract_by_linkid_post(linkid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->inventory_links_contract_by_linkid_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **body** | [**InventoryLinksContractRequest37**](InventoryLinksContractRequest37.md)|  | [optional] 

### Return type

[**Array&lt;InventoryLinksContractResponse38&gt;**](InventoryLinksContractResponse38.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



