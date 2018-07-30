# TelstraTPN::EndpointsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoint_endpointuuid_get**](EndpointsApi.md#endpoint_endpointuuid_get) | **GET** /eis/1.0.0/endpoint/endpointuuid/{endpointuuid} | Get Endpoint name and status
[**endpoint_endpointuuid_put**](EndpointsApi.md#endpoint_endpointuuid_put) | **PUT** /eis/1.0.0/endpoint/endpointuuid/{endpointuuid} | Update Endpoint name
[**endpoints_assign_topology_tag**](EndpointsApi.md#endpoints_assign_topology_tag) | **POST** /eis/1.0.0/endpoints/{endpointuuid}/assign_topology_tag | Assign an Endpoint to a Topology
[**endpoints_topology_tag_uuid**](EndpointsApi.md#endpoints_topology_tag_uuid) | **GET** /eis/1.0.0/endpoints/topology_tag_uuid/{topotaguuid} | List Endpoints for Topology
[**endpoints_topology_tag_uuid_endpoint**](EndpointsApi.md#endpoints_topology_tag_uuid_endpoint) | **DELETE** /eis/1.0.0/endpoints/topology_tag_uuid/{topotaguuid}/endpoint/{endpointuuid} | Remove Endpoint from a Topology
[**inventory_endpoint**](EndpointsApi.md#inventory_endpoint) | **GET** /1.0.0/inventory/endpoint/{endpointuuid} | Get information about the specified endpoint
[**inventory_endpoints_customeruuid**](EndpointsApi.md#inventory_endpoints_customeruuid) | **GET** /1.0.0/inventory/endpoints/customeruuid/{customeruuid} | Get list of endpoints for a customer
[**inventory_links_stats_endpoint**](EndpointsApi.md#inventory_links_stats_endpoint) | **GET** /1.0.0/inventory/links-stats/endpoint/{endpointuuid}/{startdate}/{enddate} | Get statistics for endpoint
[**inventory_links_stats_endpointstate**](EndpointsApi.md#inventory_links_stats_endpointstate) | **GET** /1.0.0/inventory/links-stats/endpointstate/{endpointuuid}/{startdate}/{enddate} | Get state statistics for endpoint
[**inventory_regularendpoint**](EndpointsApi.md#inventory_regularendpoint) | **POST** /1.0.0/inventory/regularendpoint | Create Physical (Port) Endpoint
[**inventory_regularvport**](EndpointsApi.md#inventory_regularvport) | **POST** /1.0.0/inventory/regularvport | Create VPort for physical endpoint
[**inventory_vnfendpoint**](EndpointsApi.md#inventory_vnfendpoint) | **POST** /1.0.0/inventory/vnfendpoint | Instantiate Virtual Network Function
[**vnfendpoint_vnfuuid**](EndpointsApi.md#vnfendpoint_vnfuuid) | **GET** /eis/1.0.0/vnfendpoint/vnfuuid/{vnfuuid} | Get details of a specific VNF


# **endpoint_endpointuuid_get**
> InlineResponse2004 endpoint_endpointuuid_get(endpointuuid)

Get Endpoint name and status

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint

begin
  #Get Endpoint name and status
  result = api_instance.endpoint_endpointuuid_get(endpointuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->endpoint_endpointuuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **endpoint_endpointuuid_put**
> SuccessFragment endpoint_endpointuuid_put(endpointuuid, opts)

Update Endpoint name

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint
opts = {
  endpointupdaterequest: TelstraTPN::Endpointupdaterequest.new # Endpointupdaterequest | 
}

begin
  #Update Endpoint name
  result = api_instance.endpoint_endpointuuid_put(endpointuuid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->endpoint_endpointuuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 
 **endpointupdaterequest** | [**Endpointupdaterequest**](Endpointupdaterequest.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, 



# **endpoints_assign_topology_tag**
> SuccessFragment endpoints_assign_topology_tag(endpointuuid, opts)

Assign an Endpoint to a Topology

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint
opts = {
  assigntopotagrequest: TelstraTPN::Assigntopotagrequest.new # Assigntopotagrequest | 
}

begin
  #Assign an Endpoint to a Topology
  result = api_instance.endpoints_assign_topology_tag(endpointuuid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->endpoints_assign_topology_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 
 **assigntopotagrequest** | [**Assigntopotagrequest**](Assigntopotagrequest.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **endpoints_topology_tag_uuid**
> InlineResponse20014 endpoints_topology_tag_uuid(topotaguuid)

List Endpoints for Topology

List all Endpoints associated with the topology tag.

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
topotaguuid = 'topotaguuid_example' # String | Unique identifier representing a specific topology tag

begin
  #List Endpoints for Topology
  result = api_instance.endpoints_topology_tag_uuid(topotaguuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->endpoints_topology_tag_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **endpoints_topology_tag_uuid_endpoint**
> endpoints_topology_tag_uuid_endpoint(topotaguuid, endpointuuid)

Remove Endpoint from a Topology

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
topotaguuid = 'topotaguuid_example' # String | Unique identifier representing a specific topology tag
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint

begin
  #Remove Endpoint from a Topology
  api_instance.endpoints_topology_tag_uuid_endpoint(topotaguuid, endpointuuid)
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->endpoints_topology_tag_uuid_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **String**| Unique identifier representing a specific topology tag | 
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 

### Return type

nil (empty response body)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **inventory_endpoint**
> InlineResponse2002 inventory_endpoint(endpointuuid)

Get information about the specified endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint

begin
  #Get information about the specified endpoint
  result = api_instance.inventory_endpoint(endpointuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_endpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **String**| Unique identifier representing a specific endpoint | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_endpoints_customeruuid**
> InlineResponse2001 inventory_endpoints_customeruuid(customeruuid)

Get list of endpoints for a customer

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
customeruuid = 'customeruuid_example' # String | Unique identifier representing a specific customer

begin
  #Get list of endpoints for a customer
  result = api_instance.inventory_endpoints_customeruuid(customeruuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_endpoints_customeruuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **String**| Unique identifier representing a specific customer | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



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

api_instance = TelstraTPN::EndpointsApi.new
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint
startdate = 'startdate_example' # String | Start date for statistics query
enddate = 'enddate_example' # String | End date for statistics query

begin
  #Get statistics for endpoint
  result = api_instance.inventory_links_stats_endpoint(endpointuuid, startdate, enddate)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_links_stats_endpoint: #{e}"
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

api_instance = TelstraTPN::EndpointsApi.new
endpointuuid = 'endpointuuid_example' # String | Unique identifier representing a specific endpoint
startdate = 'startdate_example' # String | Start date for statistics query
enddate = 'enddate_example' # String | End date for statistics query

begin
  #Get state statistics for endpoint
  result = api_instance.inventory_links_stats_endpointstate(endpointuuid, startdate, enddate)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_links_stats_endpointstate: #{e}"
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



# **inventory_regularendpoint**
> SuccessFragment inventory_regularendpoint(opts)

Create Physical (Port) Endpoint

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
opts = {
  regendpointrequest: TelstraTPN::Regendpointrequest.new # Regendpointrequest | 
}

begin
  #Create Physical (Port) Endpoint
  result = api_instance.inventory_regularendpoint(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_regularendpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regendpointrequest** | [**Regendpointrequest**](Regendpointrequest.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_regularvport**
> SuccessFragment inventory_regularvport(opts)

Create VPort for physical endpoint

Create VPort representing a VLAN on a Physical Ethernet Port

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
opts = {
  regvportrequest: TelstraTPN::Regvportrequest.new # Regvportrequest | 
}

begin
  #Create VPort for physical endpoint
  result = api_instance.inventory_regularvport(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_regularvport: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regvportrequest** | [**Regvportrequest**](Regvportrequest.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_vnfendpoint**
> SuccessFragment inventory_vnfendpoint(opts)

Instantiate Virtual Network Function

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
opts = {
  vnfendpointrequest: TelstraTPN::Vnfendpointrequest.new # Vnfendpointrequest | 
}

begin
  #Instantiate Virtual Network Function
  result = api_instance.inventory_vnfendpoint(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->inventory_vnfendpoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vnfendpointrequest** | [**Vnfendpointrequest**](Vnfendpointrequest.md)|  | [optional] 

### Return type

[**SuccessFragment**](SuccessFragment.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **vnfendpoint_vnfuuid**
> InlineResponse2003 vnfendpoint_vnfuuid(vnfuuid)

Get details of a specific VNF

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::EndpointsApi.new
vnfuuid = 'vnfuuid_example' # String | Unique identifier representing a specific virtual network function

begin
  #Get details of a specific VNF
  result = api_instance.vnfendpoint_vnfuuid(vnfuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling EndpointsApi->vnfendpoint_vnfuuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vnfuuid** | **String**| Unique identifier representing a specific virtual network function | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



