# TelstraTPN::ExchangeProvider

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | UUID of the exchange provider | [optional] 
**is_provider** | **BOOLEAN** |  | [optional] 
**visit_card_uuid** | **String** | UUID of the visit card | [optional] 
**is_public** | **BOOLEAN** | If true, provider is listed in Global Exchange | [optional] 
**pops** | [**Array&lt;Pop&gt;**](Pop.md) | Locations for which exchange requests can be made to this provider | [optional] 
**pending_requests_count** | **Integer** | Number of requests awaiting provider approval | [optional] 
**approved_requests_count** | **Integer** | Number of requests provider has approved | [optional] 


