# Telstra Programmable Network

TelstraTPN - the Ruby gem for the Telstra Programmable Network API

Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

- API version: 2.1.2
- Package version: 1.0.0

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build TelstraTPN.gemspec
```

Then either install the gem locally:

```shell
gem install ./TelstraTPN-1.0.0.gem
```
(for development, run `gem install --dev ./TelstraTPN-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'TelstraTPN', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/Telstra/Programmable-Network-SDK-ruby, then add the following in the Gemfile:

    gem 'TelstraTPN', :git => 'https://github.com/Telstra/Programmable-Network-SDK-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'TelstraTPN'

# Setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::AuthenticationApi.new

grant_type = "grant_type_example" # String | 

username = "username_example" # String | 

password = "password_example" # String | 


begin
  #Create an authentication token
  result = api_instance.create_an_authentication_token(grant_type, username, password)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling AuthenticationApi->create_an_authentication_token: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://penapi.pacnetconnect.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*TelstraTPN::AuthenticationApi* | [**create_an_authentication_token**](docs/AuthenticationApi.md#create_an_authentication_token) | **POST** /1.0.0/auth/generatetoken | Create an authentication token
*TelstraTPN::AuthenticationApi* | [**validate_authentication_token**](docs/AuthenticationApi.md#validate_authentication_token) | **GET** /1.0.0/auth/validatetoken | Validate authentication token
*TelstraTPN::ContractsApi* | [**create_new_contract_on_specified_link**](docs/ContractsApi.md#create_new_contract_on_specified_link) | **POST** /1.0.0/inventory/links/{linkid}/contract | Create new Contract on specified link
*TelstraTPN::ContractsApi* | [**get_active_contract_by_contract_id**](docs/ContractsApi.md#get_active_contract_by_contract_id) | **GET** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Get active Contract by ContractID
*TelstraTPN::ContractsApi* | [**update_active_contract_by_contract_id**](docs/ContractsApi.md#update_active_contract_by_contract_id) | **PUT** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Update active Contract by ContractID
*TelstraTPN::CustomersApi* | [**get_account_information_details**](docs/CustomersApi.md#get_account_information_details) | **GET** /1.0.0/account/{customeruuid} | Get account information details
*TelstraTPN::CustomersApi* | [**list_users**](docs/CustomersApi.md#list_users) | **GET** /1.0.0/account/{customeruuid}/user | List users
*TelstraTPN::DatacentresApi* | [**get_list_of_all_the_data_centers**](docs/DatacentresApi.md#get_list_of_all_the_data_centers) | **GET** /1.0.0/inventory/datacenters | Get list of all the data centers
*TelstraTPN::EndpointsApi* | [**create_physical__port_endpoint**](docs/EndpointsApi.md#create_physical__port_endpoint) | **POST** /1.0.0/inventory/regularendpoint | Create Physical (Port) Endpoint
*TelstraTPN::EndpointsApi* | [**create_vnf_endpoint**](docs/EndpointsApi.md#create_vnf_endpoint) | **POST** /1.0.0/inventory/vnfendpoint | Create VNF Endpoint
*TelstraTPN::EndpointsApi* | [**get_information_about_the_specified_endpoint**](docs/EndpointsApi.md#get_information_about_the_specified_endpoint) | **GET** /1.0.0/inventory/endpoint/{endpointuuid} | Get information about the specified endpoint
*TelstraTPN::EndpointsApi* | [**get_list_of_endpoints_for_a_customer**](docs/EndpointsApi.md#get_list_of_endpoints_for_a_customer) | **GET** /1.0.0/inventory/endpoints/customeruuid/{customeruuid} | Get list of endpoints for a customer
*TelstraTPN::LinksApi* | [**create_link_and_initial_contract**](docs/LinksApi.md#create_link_and_initial_contract) | **POST** /1.0.0/inventory/link | Create Link and initial Contract
*TelstraTPN::LinksApi* | [**get_active_links**](docs/LinksApi.md#get_active_links) | **GET** /1.0.0/inventory/links/customer/{customeruuid} | Get active Links
*TelstraTPN::LinksApi* | [**get_details_of_specified_link**](docs/LinksApi.md#get_details_of_specified_link) | **GET** /1.0.0/inventory/links/{linkid} | Get details of specified link
*TelstraTPN::LinksApi* | [**get_link_history**](docs/LinksApi.md#get_link_history) | **GET** /1.0.0/inventory/links/history/{linkid} | Get Link history
*TelstraTPN::TopologiesApi* | [**create_a_named_topology_tag**](docs/TopologiesApi.md#create_a_named_topology_tag) | **POST** /ttms/1.0.0/topology_tag | Create a named topology tag
*TelstraTPN::TopologiesApi* | [**get_information_about_the_specified_topology_tag**](docs/TopologiesApi.md#get_information_about_the_specified_topology_tag) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Get information about the specified topology tag
*TelstraTPN::TopologiesApi* | [**list_all_topology_tags**](docs/TopologiesApi.md#list_all_topology_tags) | **GET** /ttms/1.0.0/topology_tag | List all topology tags
*TelstraTPN::TopologiesApi* | [**list_objects_for_topology**](docs/TopologiesApi.md#list_objects_for_topology) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/objects/ | List objects for Topology
*TelstraTPN::VnfsApi* | [**list_images_in_the_marketplace**](docs/VnfsApi.md#list_images_in_the_marketplace) | **GET** /1.0.0/marketplace/image | List images in the Marketplace
*TelstraTPN::VportsApi* | [**create_v_port_for_physical_endpoint**](docs/VportsApi.md#create_v_port_for_physical_endpoint) | **POST** /1.0.0/inventory/regularvport | Create VPort for physical endpoint
*TelstraTPN::VportsApi* | [**create_vnf_v_port**](docs/VportsApi.md#create_vnf_v_port) | **POST** /1.0.0/inventory/vnf/vport | Create VNF VPort
*TelstraTPN::VportsApi* | [**get_information_about_the_specified_v_port**](docs/VportsApi.md#get_information_about_the_specified_v_port) | **GET** /1.0.0/inventory/vport/{vportuuid} | Get information about the specified VPort


## Documentation for Models

 - [TelstraTPN::Billing](docs/Billing.md)
 - [TelstraTPN::Classification](docs/Classification.md)
 - [TelstraTPN::Contract](docs/Contract.md)
 - [TelstraTPN::Datacenter](docs/Datacenter.md)
 - [TelstraTPN::Endpoint](docs/Endpoint.md)
 - [TelstraTPN::EndpointPort](docs/EndpointPort.md)
 - [TelstraTPN::Endpointlist](docs/Endpointlist.md)
 - [TelstraTPN::Error](docs/Error.md)
 - [TelstraTPN::Error70](docs/Error70.md)
 - [TelstraTPN::Flavor](docs/Flavor.md)
 - [TelstraTPN::GlanceImage](docs/GlanceImage.md)
 - [TelstraTPN::Link](docs/Link.md)
 - [TelstraTPN::Link62](docs/Link62.md)
 - [TelstraTPN::Meta](docs/Meta.md)
 - [TelstraTPN::Model100AccountResponse](docs/Model100AccountResponse.md)
 - [TelstraTPN::Model100AuthGeneratetokenResponse](docs/Model100AuthGeneratetokenResponse.md)
 - [TelstraTPN::Model100AuthValidatetokenResponse](docs/Model100AuthValidatetokenResponse.md)
 - [TelstraTPN::Model100InventoryDatacenters401Error](docs/Model100InventoryDatacenters401Error.md)
 - [TelstraTPN::Model100InventoryDatacentersResponse](docs/Model100InventoryDatacentersResponse.md)
 - [TelstraTPN::Model100InventoryEndpointResponse](docs/Model100InventoryEndpointResponse.md)
 - [TelstraTPN::Model100InventoryEndpointsCustomeruuidResponse](docs/Model100InventoryEndpointsCustomeruuidResponse.md)
 - [TelstraTPN::Model100InventoryLinkRequest](docs/Model100InventoryLinkRequest.md)
 - [TelstraTPN::Model100InventoryLinkResponse](docs/Model100InventoryLinkResponse.md)
 - [TelstraTPN::Model100InventoryLinksContractRequest](docs/Model100InventoryLinksContractRequest.md)
 - [TelstraTPN::Model100InventoryLinksContractRequest35](docs/Model100InventoryLinksContractRequest35.md)
 - [TelstraTPN::Model100InventoryLinksContractResponse](docs/Model100InventoryLinksContractResponse.md)
 - [TelstraTPN::Model100InventoryLinksContractResponse31](docs/Model100InventoryLinksContractResponse31.md)
 - [TelstraTPN::Model100InventoryLinksContractResponse36](docs/Model100InventoryLinksContractResponse36.md)
 - [TelstraTPN::Model100InventoryLinksHistoryResponse](docs/Model100InventoryLinksHistoryResponse.md)
 - [TelstraTPN::Model100InventoryLinksResponse](docs/Model100InventoryLinksResponse.md)
 - [TelstraTPN::Model100InventoryRegularendpointRequest](docs/Model100InventoryRegularendpointRequest.md)
 - [TelstraTPN::Model100InventoryRegularendpointResponse](docs/Model100InventoryRegularendpointResponse.md)
 - [TelstraTPN::Model100InventoryRegularvportRequest](docs/Model100InventoryRegularvportRequest.md)
 - [TelstraTPN::Model100InventoryRegularvportResponse](docs/Model100InventoryRegularvportResponse.md)
 - [TelstraTPN::Model100InventoryVnfVportRequest](docs/Model100InventoryVnfVportRequest.md)
 - [TelstraTPN::Model100InventoryVnfVportResponse](docs/Model100InventoryVnfVportResponse.md)
 - [TelstraTPN::Model100InventoryVnfendpointRequest](docs/Model100InventoryVnfendpointRequest.md)
 - [TelstraTPN::Model100InventoryVnfendpointResponse](docs/Model100InventoryVnfendpointResponse.md)
 - [TelstraTPN::Model100MarketplaceImageResponse](docs/Model100MarketplaceImageResponse.md)
 - [TelstraTPN::Object50](docs/Object50.md)
 - [TelstraTPN::Params](docs/Params.md)
 - [TelstraTPN::Params29](docs/Params29.md)
 - [TelstraTPN::Params32](docs/Params32.md)
 - [TelstraTPN::Params37](docs/Params37.md)
 - [TelstraTPN::Product](docs/Product.md)
 - [TelstraTPN::Role](docs/Role.md)
 - [TelstraTPN::SuccessFragment](docs/SuccessFragment.md)
 - [TelstraTPN::Topology](docs/Topology.md)
 - [TelstraTPN::Ttms100TopologyTagObjectsResponse](docs/Ttms100TopologyTagObjectsResponse.md)
 - [TelstraTPN::Ttms100TopologyTagRequest](docs/Ttms100TopologyTagRequest.md)
 - [TelstraTPN::User](docs/User.md)
 - [TelstraTPN::Vlan](docs/Vlan.md)
 - [TelstraTPN::VnfTag](docs/VnfTag.md)
 - [TelstraTPN::Vport](docs/Vport.md)
 - [TelstraTPN::Vportvalue](docs/Vportvalue.md)


## Documentation for Authorization


### auth

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: N/A

