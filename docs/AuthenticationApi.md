# TelstraTPN::AuthenticationApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_token**](AuthenticationApi.md#generate_token) | **POST** /1.0.0/auth/generatetoken | Create an authentication token
[**validate_token**](AuthenticationApi.md#validate_token) | **GET** /1.0.0/auth/validatetoken | Validate authentication token


# **generate_token**
> InlineResponse20015 generate_token(grant_type, username, password)

Create an authentication token

### Example
```ruby
# load the gem
require 'TelstraTPN'

api_instance = TelstraTPN::AuthenticationApi.new
grant_type = 'password' # String | 
username = 'username_example' # String | 
password = 'password_example' # String | 

begin
  #Create an authentication token
  result = api_instance.generate_token(grant_type, username, password)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling AuthenticationApi->generate_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**|  | [default to &#39;password&#39;]
 **username** | **String**|  | 
 **password** | **String**|  | 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **validate_token**
> InlineResponse20016 validate_token

Validate authentication token

Validate the authentication token and get information about the user (roles, permissions, etc.)

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::AuthenticationApi.new

begin
  #Validate authentication token
  result = api_instance.validate_token
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling AuthenticationApi->validate_token: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



