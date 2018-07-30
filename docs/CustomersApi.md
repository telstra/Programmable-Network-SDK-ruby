# TelstraTPN::CustomersApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account**](CustomersApi.md#account) | **GET** /1.0.0/account/{customeruuid} | Get account information details
[**account_user**](CustomersApi.md#account_user) | **GET** /1.0.0/account/{customeruuid}/user | List users


# **account**
> InlineResponse20017 account(customeruuid)

Get account information details

Get the account information for the specified customer

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::CustomersApi.new
customeruuid = 'customeruuid_example' # String | Unique identifier representing a specific customer

begin
  #Get account information details
  result = api_instance.account(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling CustomersApi->account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, 



# **account_user**
> Array&lt;User&gt; account_user(customeruuid)

List users

List all users associated with the specified customer

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::CustomersApi.new
customeruuid = 'customeruuid_example' # String | Unique identifier representing a specific customer

begin
  #List users
  result = api_instance.account_user(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling CustomersApi->account_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



