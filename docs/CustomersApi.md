# TelstraTPN::CustomersApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_information_details**](CustomersApi.md#get_account_information_details) | **GET** /1.0.0/account/{customeruuid} | Get account information details
[**list_users**](CustomersApi.md#list_users) | **GET** /1.0.0/account/{customeruuid}/user | List users


# **get_account_information_details**
> Model100AccountResponse get_account_information_details(customeruuid)

Get account information details

Get the account information for the specified customer

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::CustomersApi.new

customeruuid = "customeruuid_example" # String | Unique identifier representing a specific customer


begin
  #Get account information details
  result = api_instance.get_account_information_details(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling CustomersApi->get_account_information_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Model100AccountResponse**](Model100AccountResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_users**
> Array&lt;User&gt; list_users(customeruuid)

List users

List all users associated with the specified customer

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::CustomersApi.new

customeruuid = "customeruuid_example" # String | Unique identifier representing a specific customer


begin
  #List users
  result = api_instance.list_users(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling CustomersApi->list_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



