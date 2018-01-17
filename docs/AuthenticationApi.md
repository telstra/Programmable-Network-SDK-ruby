# TelstraTPN::AuthenticationApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_generatetoken_post**](AuthenticationApi.md#auth_generatetoken_post) | **POST** /1.0.0/auth/generatetoken | Create an authentication token
[**auth_validatetoken_get**](AuthenticationApi.md#auth_validatetoken_get) | **GET** /1.0.0/auth/validatetoken | Validate authentication token


# **auth_generatetoken_post**
> AuthGeneratetokenResponse auth_generatetoken_post(grant_type, username, password)

Create an authentication token

Create an authentication token

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::AuthenticationApi.new

grant_type = "grant_type_example" # String | 

username = "username_example" # String | 

password = "password_example" # String | 


begin
  #Create an authentication token
  result = api_instance.auth_generatetoken_post(grant_type, username, password)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling AuthenticationApi->auth_generatetoken_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**|  | 
 **username** | **String**|  | 
 **password** | **String**|  | 

### Return type

[**AuthGeneratetokenResponse**](AuthGeneratetokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **auth_validatetoken_get**
> AuthValidatetokenResponse auth_validatetoken_get

Validate authentication token

Validate the authentication token and get information about the user (roles, permissions, etc.)

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::AuthenticationApi.new

begin
  #Validate authentication token
  result = api_instance.auth_validatetoken_get
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling AuthenticationApi->auth_validatetoken_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthValidatetokenResponse**](AuthValidatetokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



