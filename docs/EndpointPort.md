# TelstraTPN::EndpointPort

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cabletype** | **String** | Physical cable medium required to connect to this port | [optional] 
**connectortype** | **String** | Type of phyisical connector required to connect to this port | [optional] 
**cfa** | **String** | Customer Facility Assignment, or the reference ID for the physical port within the DC for interconnect | [optional] 
**endpointuuid** | **String** | Unique identifier for this endpoint | [optional] 
**interfacespeed** | **String** | Speed at which the physical interface operates | [optional] 
**interfacetype** | **String** | Common name for the standard used on this port | [optional] 
**vport** | [**Array&lt;Vport&gt;**](Vport.md) | List of Virtual Ports (or VLANs) which exist on this endpoint | [optional] 


