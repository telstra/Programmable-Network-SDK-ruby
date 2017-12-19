# TelstraTPN::CustomersApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**100_account_by_customeruuid_get**](CustomersApi.md#100_account_by_customeruuid_get) | **GET** /1.0.0/account/{customeruuid} | Get account information details
[**100_account_user_by_customeruuid_get**](CustomersApi.md#100_account_user_by_customeruuid_get) | **GET** /1.0.0/account/{customeruuid}/user | List users


# **100_account_by_customeruuid_get**
> Model100AccountResponse 100_account_by_customeruuid_get(customeruuid)

Get account information details

Get the account information for the specified customer

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::CustomersApi.new

customeruuid = "customeruuid_example" # String | Unique identifier representing a specific customer


begin
  #Get account information details
  result = api_instance.100_account_by_customeruuid_get(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling CustomersApi->100_account_by_customeruuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Model100AccountResponse**](Model100AccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **100_account_user_by_customeruuid_get**
> Array&lt;User&gt; 100_account_user_by_customeruuid_get(customeruuid)

List users

List all users associated with the specified customer

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::CustomersApi.new

customeruuid = "customeruuid_example" # String | Unique identifier representing a specific customer


begin
  #List users
  result = api_instance.100_account_user_by_customeruuid_get(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling CustomersApi->100_account_user_by_customeruuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



