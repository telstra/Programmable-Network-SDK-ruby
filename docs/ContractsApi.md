# TelstraTPN::ContractsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**100_inventory_links_contract_by_linkid_and_contractid_get**](ContractsApi.md#100_inventory_links_contract_by_linkid_and_contractid_get) | **GET** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Get active Contract by ContractID
[**100_inventory_links_contract_by_linkid_and_contractid_put**](ContractsApi.md#100_inventory_links_contract_by_linkid_and_contractid_put) | **PUT** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Update active Contract by ContractID
[**100_inventory_links_contract_by_linkid_post**](ContractsApi.md#100_inventory_links_contract_by_linkid_post) | **POST** /1.0.0/inventory/links/{linkid}/contract | Create new Contract on specified link


# **100_inventory_links_contract_by_linkid_and_contractid_get**
> Model100InventoryLinksContractResponse 100_inventory_links_contract_by_linkid_and_contractid_get(linkid, contractid)

Get active Contract by ContractID

Get active Contract by ContractID

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::ContractsApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link

contractid = "contractid_example" # String | Unique identifier representing a specific contract


begin
  #Get active Contract by ContractID
  result = api_instance.100_inventory_links_contract_by_linkid_and_contractid_get(linkid, contractid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->100_inventory_links_contract_by_linkid_and_contractid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **contractid** | **String**| Unique identifier representing a specific contract | 

### Return type

[**Model100InventoryLinksContractResponse**](Model100InventoryLinksContractResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_links_contract_by_linkid_and_contractid_put**
> Model100InventoryLinksContractResponse33 100_inventory_links_contract_by_linkid_and_contractid_put(linkid, contractid, opts)

Update active Contract by ContractID

Update active Contract by ContractID

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::ContractsApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link

contractid = "contractid_example" # String | Unique identifier representing a specific contract

opts = { 
  body: TelstraTPN::Model100InventoryLinksContractRequest.new # Model100InventoryLinksContractRequest | 
}

begin
  #Update active Contract by ContractID
  result = api_instance.100_inventory_links_contract_by_linkid_and_contractid_put(linkid, contractid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->100_inventory_links_contract_by_linkid_and_contractid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **contractid** | **String**| Unique identifier representing a specific contract | 
 **body** | [**Model100InventoryLinksContractRequest**](Model100InventoryLinksContractRequest.md)|  | [optional] 

### Return type

[**Model100InventoryLinksContractResponse33**](Model100InventoryLinksContractResponse33.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_inventory_links_contract_by_linkid_post**
> Model100InventoryLinksContractResponse38 100_inventory_links_contract_by_linkid_post(linkid, opts)

Create new Contract on specified link

Create new Contract on specified link

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::ContractsApi.new

linkid = "linkid_example" # String | Unique identifier representing a specific link

opts = { 
  body: TelstraTPN::Model100InventoryLinksContractRequest37.new # Model100InventoryLinksContractRequest37 | 
}

begin
  #Create new Contract on specified link
  result = api_instance.100_inventory_links_contract_by_linkid_post(linkid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->100_inventory_links_contract_by_linkid_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **body** | [**Model100InventoryLinksContractRequest37**](Model100InventoryLinksContractRequest37.md)|  | [optional] 

### Return type

[**Model100InventoryLinksContractResponse38**](Model100InventoryLinksContractResponse38.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



