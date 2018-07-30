# TelstraTPN::StatisticsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_links_stats_endpoint**](StatisticsApi.md#inventory_links_stats_endpoint) | **GET** /1.0.0/inventory/links-stats/endpoint/{endpointuuid}/{startdate}/{enddate} | Get statistics for endpoint
[**inventory_links_stats_endpointstate**](StatisticsApi.md#inventory_links_stats_endpointstate) | **GET** /1.0.0/inventory/links-stats/endpointstate/{endpointuuid}/{startdate}/{enddate} | Get state statistics for endpoint
[**inventory_links_stats_flow**](StatisticsApi.md#inventory_links_stats_flow) | **GET** /1.0.0/inventory/links-stats/flow/{linkid}/{startdate}/{enddate} | Get statistics for flow


# **inventory_links_stats_endpoint**
> Array&lt;InlineResponse20018&gt; inventory_links_stats_endpoint(endpointuuid, startdate, enddate)

Get statistics for endpoint

Get statistics related to the specified endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::StatisticsApi.new
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint
startdate = 'startdate_example' # String | Start date for statistics query
enddate = 'enddate_example' # String | End date for statistics query

begin
  #Get statistics for endpoint
  result = api_instance.inventory_links_stats_endpoint(endpointuuid, startdate, enddate)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling StatisticsApi->inventory_links_stats_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 
 **startdate** | **String**| Start date for statistics query | 
 **enddate** | **String**| End date for statistics query | 

### Return type

[**Array&lt;InlineResponse20018&gt;**](InlineResponse20018.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_links_stats_endpointstate**
> Array&lt;InlineResponse20020&gt; inventory_links_stats_endpointstate(endpointuuid, startdate, enddate)

Get state statistics for endpoint

Get statistics related to the state of the specified endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::StatisticsApi.new
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint
startdate = 'startdate_example' # String | Start date for statistics query
enddate = 'enddate_example' # String | End date for statistics query

begin
  #Get state statistics for endpoint
  result = api_instance.inventory_links_stats_endpointstate(endpointuuid, startdate, enddate)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling StatisticsApi->inventory_links_stats_endpointstate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 
 **startdate** | **String**| Start date for statistics query | 
 **enddate** | **String**| End date for statistics query | 

### Return type

[**Array&lt;InlineResponse20020&gt;**](InlineResponse20020.md)

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

api_instance = TelstraTPN::StatisticsApi.new
linkid = 'linkid_example' # String | Unique identifier representing a specific link
startdate = 'startdate_example' # String | Start date for statistics query
enddate = 'enddate_example' # String | End date for statistics query

begin
  #Get statistics for flow
  result = api_instance.inventory_links_stats_flow(linkid, startdate, enddate)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling StatisticsApi->inventory_links_stats_flow: #{e}"
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



