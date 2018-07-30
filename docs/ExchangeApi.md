# TelstraTPN::ExchangeApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_profile_exchange**](ExchangeApi.md#account_profile_exchange) | **GET** /1.0.0/account/profile/exchange | Get the current account&#39;s Exchange profile
[**exchange**](ExchangeApi.md#exchange) | **GET** /1.0.0/exchange | List all Exchange providers, with POPs
[**exchange_exprovuuid**](ExchangeApi.md#exchange_exprovuuid) | **GET** /1.0.0/exchange/{exprovuuid} | Exchange provider details
[**visitcard**](ExchangeApi.md#visitcard) | **GET** /1.0.0/visitcard | Get list of Visit Cards
[**visitcard_uuid_get**](ExchangeApi.md#visitcard_uuid_get) | **GET** /1.0.0/visitcard/{visitcarduuid} | View details of the specified Visit Card
[**visitcard_uuid_put**](ExchangeApi.md#visitcard_uuid_put) | **PUT** /1.0.0/visitcard/{visitcarduuid} | Update details of the specified Visit Card


# **account_profile_exchange**
> InlineResponse20012 account_profile_exchange

Get the current account's Exchange profile

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ExchangeApi.new

begin
  #Get the current account's Exchange profile
  result = api_instance.account_profile_exchange
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ExchangeApi->account_profile_exchange: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **exchange**
> Array&lt;ExchangeProvider&gt; exchange

List all Exchange providers, with POPs

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ExchangeApi.new

begin
  #List all Exchange providers, with POPs
  result = api_instance.exchange
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ExchangeApi->exchange: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ExchangeProvider&gt;**](ExchangeProvider.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **exchange_exprovuuid**
> ExchangeProvider exchange_exprovuuid(exprovuuid)

Exchange provider details

Get information about the specified Exchange provider

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ExchangeApi.new
exprovuuid = 'exprovuuid_example' # String | Unique identifier representing a specific exchange provider

begin
  #Exchange provider details
  result = api_instance.exchange_exprovuuid(exprovuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ExchangeApi->exchange_exprovuuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exprovuuid** | **String**| Unique identifier representing a specific exchange provider | 

### Return type

[**ExchangeProvider**](ExchangeProvider.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **visitcard**
> Array&lt;Visitcard&gt; visitcard

Get list of Visit Cards

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ExchangeApi.new

begin
  #Get list of Visit Cards
  result = api_instance.visitcard
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ExchangeApi->visitcard: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Visitcard&gt;**](Visitcard.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **visitcard_uuid_get**
> Visitcard visitcard_uuid_get(visitcarduuid)

View details of the specified Visit Card

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ExchangeApi.new
visitcarduuid = 'visitcarduuid_example' # String | Unique identifier representing a specific exchange visit card (provider description)

begin
  #View details of the specified Visit Card
  result = api_instance.visitcard_uuid_get(visitcarduuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ExchangeApi->visitcard_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **visitcarduuid** | **String**| Unique identifier representing a specific exchange visit card (provider description) | 

### Return type

[**Visitcard**](Visitcard.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **visitcard_uuid_put**
> Visitcard visitcard_uuid_put(visitcarduuid, opts)

Update details of the specified Visit Card

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::ExchangeApi.new
visitcarduuid = 'visitcarduuid_example' # String | Unique identifier representing a specific exchange visit card (provider description)
opts = {
  unknown_base_type: TelstraTPN::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | 
}

begin
  #Update details of the specified Visit Card
  result = api_instance.visitcard_uuid_put(visitcarduuid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling ExchangeApi->visitcard_uuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **visitcarduuid** | **String**| Unique identifier representing a specific exchange visit card (provider description) | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | [optional] 

### Return type

[**Visitcard**](Visitcard.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



