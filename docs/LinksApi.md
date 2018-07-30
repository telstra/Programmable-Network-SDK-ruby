# TelstraTPN::LinksApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_link**](LinksApi.md#inventory_link) | **POST** /1.0.0/inventory/link | Create Link and initial Contract
[**inventory_links**](LinksApi.md#inventory_links) | **GET** /1.0.0/inventory/links/{linkid} | Get details of specified link
[**inventory_links_customer**](LinksApi.md#inventory_links_customer) | **GET** /1.0.0/inventory/links/customer/{customeruuid} | Get active Links
[**inventory_links_history**](LinksApi.md#inventory_links_history) | **GET** /1.0.0/inventory/links/history/{linkid} | Get Link history
[**inventory_links_stats_flow**](LinksApi.md#inventory_links_stats_flow) | **GET** /1.0.0/inventory/links-stats/flow/{linkid}/{startdate}/{enddate} | Get statistics for flow


# **inventory_link**
> SuccessFragment inventory_link(opts)

Create Link and initial Contract

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::LinksApi.new
opts = {
  createlinkrequest: TelstraTPN::Createlinkrequest.new # Createlinkrequest | 
}

begin
  #Create Link and initial Contract
  result = api_instance.inventory_link(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->inventory_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createlinkrequest** | [**Createlinkrequest**](Createlinkrequest.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_links**
> InlineResponse2007 inventory_links(linkid)

Get details of specified link

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::LinksApi.new
linkid = 'linkid_example' # String | Unique identifier representing a specific link

begin
  #Get details of specified link
  result = api_instance.inventory_links(linkid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->inventory_links: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_links_customer**
> Array&lt;Link&gt; inventory_links_customer(customeruuid)

Get active Links

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::LinksApi.new
customeruuid = 'customeruuid_example' # String | Unique identifier representing a specific customer

begin
  #Get active Links
  result = api_instance.inventory_links_customer(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->inventory_links_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**Array&lt;Link&gt;**](Link.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_links_history**
> InlineResponse2005 inventory_links_history(linkid)

Get Link history

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::LinksApi.new
linkid = 'linkid_example' # String | Unique identifier representing a specific link

begin
  #Get Link history
  result = api_instance.inventory_links_history(linkid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->inventory_links_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_links_stats_flow**
> Array&lt;InlineResponse20019&gt; inventory_links_stats_flow(linkid, startdate, enddate)

Get statistics for flow

Get statistics related to the specified flow

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::LinksApi.new
linkid = 'linkid_example' # String | Unique identifier representing a specific link
startdate = 'startdate_example' # String | Start date for statistics query
enddate = 'enddate_example' # String | End date for statistics query

begin
  #Get statistics for flow
  result = api_instance.inventory_links_stats_flow(linkid, startdate, enddate)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling LinksApi->inventory_links_stats_flow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **String**| Unique identifier representing a specific link | 
 **startdate** | **String**| Start date for statistics query | 
 **enddate** | **String**| End date for statistics query | 

### Return type

[**Array&lt;InlineResponse20019&gt;**](InlineResponse20019.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



