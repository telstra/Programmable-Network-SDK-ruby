# Telstra Programmable Network

TelstraTPN - the Ruby gem for the Telstra Programmable Network API

Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

- API version: 2.1.3
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

api_instance = TelstraTPN::AuthenticationApi.new

grant_type = "password" # String | 

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

## Documentation for API Endpoints

All URIs are relative to *https://penapi.pacnetconnect.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*TelstraTPN::AuthenticationApi* | [**auth_generatetoken_post**](docs/AuthenticationApi.md#auth_generatetoken_post) | **POST** /1.0.0/auth/generatetoken | Create an authentication token
*TelstraTPN::AuthenticationApi* | [**auth_validatetoken_get**](docs/AuthenticationApi.md#auth_validatetoken_get) | **GET** /1.0.0/auth/validatetoken | Validate authentication token
*TelstraTPN::ContractsApi* | [**inventory_links_contract_by_linkid_and_contractid_get**](docs/ContractsApi.md#inventory_links_contract_by_linkid_and_contractid_get) | **GET** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Get active Contract by ContractID
*TelstraTPN::ContractsApi* | [**inventory_links_contract_by_linkid_and_contractid_put**](docs/ContractsApi.md#inventory_links_contract_by_linkid_and_contractid_put) | **PUT** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Update active Contract by ContractID
*TelstraTPN::ContractsApi* | [**inventory_links_contract_by_linkid_post**](docs/ContractsApi.md#inventory_links_contract_by_linkid_post) | **POST** /1.0.0/inventory/links/{linkid}/contract | Create new Contract on specified link
*TelstraTPN::CustomersApi* | [**account_by_customeruuid_get**](docs/CustomersApi.md#account_by_customeruuid_get) | **GET** /1.0.0/account/{customeruuid} | Get account information details
*TelstraTPN::CustomersApi* | [**account_user_by_customeruuid_get**](docs/CustomersApi.md#account_user_by_customeruuid_get) | **GET** /1.0.0/account/{customeruuid}/user | List users
*TelstraTPN::DatacentresApi* | [**inventory_datacenters_get**](docs/DatacentresApi.md#inventory_datacenters_get) | **GET** /1.0.0/inventory/datacenters | Get list of all the data centers
*TelstraTPN::EndpointsApi* | [**eis100_endpoints_assign_topology_tag_by_endpointuuid_post**](docs/EndpointsApi.md#eis100_endpoints_assign_topology_tag_by_endpointuuid_post) | **POST** /eis/1.0.0/endpoints/{endpointuuid}/assign_topology_tag | Assign a Topology Tag to an Endpoint
*TelstraTPN::EndpointsApi* | [**inventory_endpoint_by_endpointuuid_get**](docs/EndpointsApi.md#inventory_endpoint_by_endpointuuid_get) | **GET** /1.0.0/inventory/endpoint/{endpointuuid} | Get information about the specified endpoint
*TelstraTPN::EndpointsApi* | [**inventory_endpoints_customeruuid_by_customeruuid_get**](docs/EndpointsApi.md#inventory_endpoints_customeruuid_by_customeruuid_get) | **GET** /1.0.0/inventory/endpoints/customeruuid/{customeruuid} | Get list of endpoints for a customer
*TelstraTPN::EndpointsApi* | [**inventory_regularendpoint_post**](docs/EndpointsApi.md#inventory_regularendpoint_post) | **POST** /1.0.0/inventory/regularendpoint | Create Physical (Port) Endpoint
*TelstraTPN::EndpointsApi* | [**inventory_vnfendpoint_post**](docs/EndpointsApi.md#inventory_vnfendpoint_post) | **POST** /1.0.0/inventory/vnfendpoint | Create VNF Endpoint
*TelstraTPN::LinksApi* | [**inventory_link_post**](docs/LinksApi.md#inventory_link_post) | **POST** /1.0.0/inventory/link | Create Link and initial Contract
*TelstraTPN::LinksApi* | [**inventory_links_by_linkid_get**](docs/LinksApi.md#inventory_links_by_linkid_get) | **GET** /1.0.0/inventory/links/{linkid} | Get details of specified link
*TelstraTPN::LinksApi* | [**inventory_links_customer_by_customeruuid_get**](docs/LinksApi.md#inventory_links_customer_by_customeruuid_get) | **GET** /1.0.0/inventory/links/customer/{customeruuid} | Get active Links
*TelstraTPN::LinksApi* | [**inventory_links_history_by_linkid_get**](docs/LinksApi.md#inventory_links_history_by_linkid_get) | **GET** /1.0.0/inventory/links/history/{linkid} | Get Link history
*TelstraTPN::TopologiesApi* | [**ttms100_topology_tag_by_topotaguuid_delete**](docs/TopologiesApi.md#ttms100_topology_tag_by_topotaguuid_delete) | **DELETE** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Delete a topology tag
*TelstraTPN::TopologiesApi* | [**ttms100_topology_tag_by_topotaguuid_get**](docs/TopologiesApi.md#ttms100_topology_tag_by_topotaguuid_get) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Get information about the specified topology tag
*TelstraTPN::TopologiesApi* | [**ttms100_topology_tag_by_topotaguuid_put**](docs/TopologiesApi.md#ttms100_topology_tag_by_topotaguuid_put) | **PUT** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Update a topology tag's name and/or description
*TelstraTPN::TopologiesApi* | [**ttms100_topology_tag_get**](docs/TopologiesApi.md#ttms100_topology_tag_get) | **GET** /ttms/1.0.0/topology_tag | List all topology tags
*TelstraTPN::TopologiesApi* | [**ttms100_topology_tag_objects_by_topotaguuid_get**](docs/TopologiesApi.md#ttms100_topology_tag_objects_by_topotaguuid_get) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/objects/ | List objects for Topology
*TelstraTPN::TopologiesApi* | [**ttms100_topology_tag_post**](docs/TopologiesApi.md#ttms100_topology_tag_post) | **POST** /ttms/1.0.0/topology_tag | Create a named topology tag
*TelstraTPN::VnfsApi* | [**marketplace_image_get**](docs/VnfsApi.md#marketplace_image_get) | **GET** /1.0.0/marketplace/image | List images in the Marketplace
*TelstraTPN::VportsApi* | [**inventory_regularvport_post**](docs/VportsApi.md#inventory_regularvport_post) | **POST** /1.0.0/inventory/regularvport | Create VPort for physical endpoint
*TelstraTPN::VportsApi* | [**inventory_vnf_vport_post**](docs/VportsApi.md#inventory_vnf_vport_post) | **POST** /1.0.0/inventory/vnf/vport | Create VNF VPort
*TelstraTPN::VportsApi* | [**inventory_vport_by_vportuuid_get**](docs/VportsApi.md#inventory_vport_by_vportuuid_get) | **GET** /1.0.0/inventory/vport/{vportuuid} | Get information about the specified VPort


## Documentation for Models

 - [TelstraTPN::AccountResponse](docs/AccountResponse.md)
 - [TelstraTPN::AuthGeneratetokenResponse](docs/AuthGeneratetokenResponse.md)
 - [TelstraTPN::AuthValidatetokenResponse](docs/AuthValidatetokenResponse.md)
 - [TelstraTPN::Billing](docs/Billing.md)
 - [TelstraTPN::Classification](docs/Classification.md)
 - [TelstraTPN::Contract](docs/Contract.md)
 - [TelstraTPN::Datacenter](docs/Datacenter.md)
 - [TelstraTPN::Eis100EndpointsAssignTopologyTagRequest](docs/Eis100EndpointsAssignTopologyTagRequest.md)
 - [TelstraTPN::Endpoint](docs/Endpoint.md)
 - [TelstraTPN::EndpointPort](docs/EndpointPort.md)
 - [TelstraTPN::Endpointlist](docs/Endpointlist.md)
 - [TelstraTPN::Error](docs/Error.md)
 - [TelstraTPN::Error74](docs/Error74.md)
 - [TelstraTPN::Flavor](docs/Flavor.md)
 - [TelstraTPN::GlanceImage](docs/GlanceImage.md)
 - [TelstraTPN::InventoryDatacenters401Error](docs/InventoryDatacenters401Error.md)
 - [TelstraTPN::InventoryDatacentersResponse](docs/InventoryDatacentersResponse.md)
 - [TelstraTPN::InventoryEndpointResponse](docs/InventoryEndpointResponse.md)
 - [TelstraTPN::InventoryEndpointsCustomeruuidResponse](docs/InventoryEndpointsCustomeruuidResponse.md)
 - [TelstraTPN::InventoryLinkRequest](docs/InventoryLinkRequest.md)
 - [TelstraTPN::InventoryLinkResponse](docs/InventoryLinkResponse.md)
 - [TelstraTPN::InventoryLinksContractRequest](docs/InventoryLinksContractRequest.md)
 - [TelstraTPN::InventoryLinksContractRequest37](docs/InventoryLinksContractRequest37.md)
 - [TelstraTPN::InventoryLinksContractResponse](docs/InventoryLinksContractResponse.md)
 - [TelstraTPN::InventoryLinksContractResponse33](docs/InventoryLinksContractResponse33.md)
 - [TelstraTPN::InventoryLinksContractResponse38](docs/InventoryLinksContractResponse38.md)
 - [TelstraTPN::InventoryLinksHistoryResponse](docs/InventoryLinksHistoryResponse.md)
 - [TelstraTPN::InventoryLinksResponse](docs/InventoryLinksResponse.md)
 - [TelstraTPN::InventoryRegularendpointRequest](docs/InventoryRegularendpointRequest.md)
 - [TelstraTPN::InventoryRegularendpointResponse](docs/InventoryRegularendpointResponse.md)
 - [TelstraTPN::InventoryRegularvportRequest](docs/InventoryRegularvportRequest.md)
 - [TelstraTPN::InventoryRegularvportResponse](docs/InventoryRegularvportResponse.md)
 - [TelstraTPN::InventoryVnfVportRequest](docs/InventoryVnfVportRequest.md)
 - [TelstraTPN::InventoryVnfVportResponse](docs/InventoryVnfVportResponse.md)
 - [TelstraTPN::InventoryVnfendpointRequest](docs/InventoryVnfendpointRequest.md)
 - [TelstraTPN::InventoryVnfendpointResponse](docs/InventoryVnfendpointResponse.md)
 - [TelstraTPN::Link](docs/Link.md)
 - [TelstraTPN::Link66](docs/Link66.md)
 - [TelstraTPN::MarketplaceImageResponse](docs/MarketplaceImageResponse.md)
 - [TelstraTPN::Meta](docs/Meta.md)
 - [TelstraTPN::Object52](docs/Object52.md)
 - [TelstraTPN::Params](docs/Params.md)
 - [TelstraTPN::Params31](docs/Params31.md)
 - [TelstraTPN::Params34](docs/Params34.md)
 - [TelstraTPN::Params39](docs/Params39.md)
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
- **Scopes**: 
  - Oauth2: Oauth2

