# TelstraTPN::ContractsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_links_contract**](ContractsApi.md#inventory_links_contract) | **POST** /1.0.0/inventory/links/{linkid}/contract | Create new Contract on specified link
[**inventory_links_contract_get**](ContractsApi.md#inventory_links_contract_get) | **GET** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Get active Contract by ContractID
[**inventory_links_contract_put**](ContractsApi.md#inventory_links_contract_put) | **PUT** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Update active Contract by ContractID


# **inventory_links_contract**
> SuccessFragment inventory_links_contract(linkid, opts)

Create new Contract on specified link

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ContractsApi.new
linkid = 'linkid_example' # String | Unique identifier representing a specific link
opts = {
  createcontractrequest: TelstraTPN::Createcontractrequest.new # Createcontractrequest | 
}

begin
  #Create new Contract on specified link
  result = api_instance.inventory_links_contract(linkid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->inventory_links_contract: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **createcontractrequest** | [**Createcontractrequest**](Createcontractrequest.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_links_contract_get**
> InlineResponse2006 inventory_links_contract_get(linkid, contractid)

Get active Contract by ContractID

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ContractsApi.new
linkid = 'linkid_example' # String | Unique identifier representing a specific link
contractid = 'contractid_example' # String | Unique identifier representing a specific contract

begin
  #Get active Contract by ContractID
  result = api_instance.inventory_links_contract_get(linkid, contractid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->inventory_links_contract_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **contractid** | **String**| Unique identifier representing a specific contract | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_links_contract_put**
> SuccessFragment inventory_links_contract_put(linkid, contractid, opts)

Update active Contract by ContractID

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ContractsApi.new
linkid = 'linkid_example' # String | Unique identifier representing a specific link
contractid = 'contractid_example' # String | Unique identifier representing a specific contract
opts = {
  body: TelstraTPN::Body.new # Body | 
}

begin
  #Update active Contract by ContractID
  result = api_instance.inventory_links_contract_put(linkid, contractid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ContractsApi->inventory_links_contract_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **contractid** | **String**| Unique identifier representing a specific contract | 
 **body** | [**Body**](Body.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



