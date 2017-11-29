# TelstraTPN::ContractsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_contract_on_specified_link**](ContractsApi.md#create_new_contract_on_specified_link) | **POST** /1.0.0/inventory/links/{linkid}/contract | Create new Contract on specified link
[**get_active_contract_by_contract_id**](ContractsApi.md#get_active_contract_by_contract_id) | **GET** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Get active Contract by ContractID
[**update_active_contract_by_contract_id**](ContractsApi.md#update_active_contract_by_contract_id) | **PUT** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Update active Contract by ContractID


# **create_new_contract_on_specified_link**
> Model100InventoryLinksContractResponse36 create_new_contract_on_specified_link(linkid, opts)

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
  body: TelstraTPN::Model100InventoryLinksContractRequest35.new # Model100InventoryLinksContractRequest35 | 
}

begin
  #Create new Contract on specified link
  result = api_instance.create_new_contract_on_specified_link(linkid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->create_new_contract_on_specified_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **body** | [**Model100InventoryLinksContractRequest35**](Model100InventoryLinksContractRequest35.md)|  | [optional] 

### Return type

[**Model100InventoryLinksContractResponse36**](Model100InventoryLinksContractResponse36.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_active_contract_by_contract_id**
> Model100InventoryLinksContractResponse get_active_contract_by_contract_id(linkid, contractid)

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
  result = api_instance.get_active_contract_by_contract_id(linkid, contractid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->get_active_contract_by_contract_id: #{e}"
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

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_active_contract_by_contract_id**
> Model100InventoryLinksContractResponse31 update_active_contract_by_contract_id(linkid, contractid, opts)

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
  body: TelstraTPN::Model100InventoryLinksContractRequest.new # Model100InventoryLinksContractRequest | 
}

begin
  #Update active Contract by ContractID
  result = api_instance.update_active_contract_by_contract_id(linkid, contractid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->update_active_contract_by_contract_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **contractid** | **String**| Unique identifier representing a specific contract | 
 **body** | [**Model100InventoryLinksContractRequest**](Model100InventoryLinksContractRequest.md)|  | [optional] 

### Return type

[**Model100InventoryLinksContractResponse31**](Model100InventoryLinksContractResponse31.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



