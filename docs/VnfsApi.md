# TelstraTPN::VnfsApi

All URIs are relative to *https://penapi.pacnetconnect.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bms_backup**](VnfsApi.md#bms_backup) | **POST** /bms/1.0.0/backup | Create backup of specified VNF
[**bms_backup_delete**](VnfsApi.md#bms_backup_delete) | **DELETE** /bms/1.0.0/backup/{backupuuid} | Delete specified backup
[**bms_backup_get**](VnfsApi.md#bms_backup_get) | **GET** /bms/1.0.0/backup/{backupuuid} | Get information about the specified backup
[**bms_backup_restore**](VnfsApi.md#bms_backup_restore) | **POST** /bms/1.0.0/backup/{backupuuid}/restore | Restore VNF from backup
[**bms_backup_vnf**](VnfsApi.md#bms_backup_vnf) | **GET** /bms/1.0.0/backup/vnf/{vnfuuid} | List backups
[**bms_backup_vnf_delete**](VnfsApi.md#bms_backup_vnf_delete) | **POST** /bms/1.0.0/backup/vnf/{vnfuuid}/delete | Delete multiple backups
[**inventory_vnf_vport**](VnfsApi.md#inventory_vnf_vport) | **POST** /1.0.0/inventory/vnf/vport | Create VNF VPort
[**inventory_vnfendpoint**](VnfsApi.md#inventory_vnfendpoint) | **POST** /1.0.0/inventory/vnfendpoint | Instantiate Virtual Network Function
[**marketplace_image**](VnfsApi.md#marketplace_image) | **GET** /1.0.0/marketplace/image | List images in the Marketplace
[**marketplace_image_add**](VnfsApi.md#marketplace_image_add) | **POST** /1.0.0/marketplace/image/{imageid}/add_to_my_images/ | Add specified image to \&quot;My Images\&quot;
[**marketplace_image_imageid**](VnfsApi.md#marketplace_image_imageid) | **GET** /1.0.0/marketplace/image/{imageid}/ | Get information about the specified image
[**marketplace_image_my_images**](VnfsApi.md#marketplace_image_my_images) | **GET** /1.0.0/marketplace/image/my_images/ | List images in \&quot;My Images\&quot;
[**marketplace_image_remove**](VnfsApi.md#marketplace_image_remove) | **POST** /1.0.0/marketplace/image/{imageid}/remove_from_my_images/ | Remove specified image from \&quot;My Images\&quot;
[**vnf**](VnfsApi.md#vnf) | **GET** /vnfds/1.0.0/vnf/{vnfuuid}/ | Get status information about the specified VNF
[**vnf_reboot**](VnfsApi.md#vnf_reboot) | **POST** /vnfds/1.0.0/vnf/{vnfuuid}/reboot | Reboot the specified VNF
[**vnf_resume**](VnfsApi.md#vnf_resume) | **POST** /vnfds/1.0.0/vnf/{vnfuuid}/resume | Resume the specified VNF
[**vnf_suspend**](VnfsApi.md#vnf_suspend) | **POST** /vnfds/1.0.0/vnf/{vnfuuid}/suspend | Suspend the specified VNF
[**vnfendpoint_vnfuuid**](VnfsApi.md#vnfendpoint_vnfuuid) | **GET** /eis/1.0.0/vnfendpoint/vnfuuid/{vnfuuid} | Get details of a specific VNF


# **bms_backup**
> Backup bms_backup(opts)

Create backup of specified VNF

'Note: if a second backup creation is attempted while one is already active, an error will be returned indicating that the VNF is invalid. If replace_backup_uuid is provided, this backup is deleted once the new backup is successfully completed'

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
opts = {
  backuprequest: TelstraTPN::Backuprequest.new # Backuprequest | 
}

begin
  #Create backup of specified VNF
  result = api_instance.bms_backup(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->bms_backup: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backuprequest** | [**Backuprequest**](Backuprequest.md)|  | [optional] 

### Return type

[**Backup**](Backup.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bms_backup_delete**
> Backup bms_backup_delete(backupuuid)

Delete specified backup

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
backupuuid = 'backupuuid_example' # String | Unique identifier representing a specific VNF backup

begin
  #Delete specified backup
  result = api_instance.bms_backup_delete(backupuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->bms_backup_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backupuuid** | **String**| Unique identifier representing a specific VNF backup | 

### Return type

[**Backup**](Backup.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bms_backup_get**
> Backup bms_backup_get(backupuuid)

Get information about the specified backup

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
backupuuid = 'backupuuid_example' # String | Unique identifier representing a specific VNF backup

begin
  #Get information about the specified backup
  result = api_instance.bms_backup_get(backupuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->bms_backup_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backupuuid** | **String**| Unique identifier representing a specific VNF backup | 

### Return type

[**Backup**](Backup.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bms_backup_restore**
> Backup bms_backup_restore(backupuuid)

Restore VNF from backup

Restore VNF from specified backup

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
backupuuid = 'backupuuid_example' # String | Unique identifier representing a specific VNF backup

begin
  #Restore VNF from backup
  result = api_instance.bms_backup_restore(backupuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->bms_backup_restore: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backupuuid** | **String**| Unique identifier representing a specific VNF backup | 

### Return type

[**Backup**](Backup.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, 



# **bms_backup_vnf**
> Array&lt;Backup&gt; bms_backup_vnf(vnfuuid)

List backups

List available backups for the specified VNF

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
vnfuuid = 'vnfuuid_example' # String | Unique identifier representing a specific virtual network function

begin
  #List backups
  result = api_instance.bms_backup_vnf(vnfuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->bms_backup_vnf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vnfuuid** | **String**| Unique identifier representing a specific virtual network function | 

### Return type

[**Array&lt;Backup&gt;**](Backup.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bms_backup_vnf_delete**
> InlineResponse202 bms_backup_vnf_delete(vnfuuid)

Delete multiple backups

Delete list of backups associated with specified VNF

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
vnfuuid = 'vnfuuid_example' # String | Unique identifier representing a specific virtual network function

begin
  #Delete multiple backups
  result = api_instance.bms_backup_vnf_delete(vnfuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->bms_backup_vnf_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vnfuuid** | **String**| Unique identifier representing a specific virtual network function | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_vnf_vport**
> InlineResponse2008 inventory_vnf_vport(opts)

Create VNF VPort

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
opts = {
  vportrequest: TelstraTPN::Vportrequest.new # Vportrequest | 
}

begin
  #Create VNF VPort
  result = api_instance.inventory_vnf_vport(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->inventory_vnf_vport: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vportrequest** | [**Vportrequest**](Vportrequest.md)|  | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

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

api_instance = TelstraTPN::VnfsApi.new
opts = {
  vnfendpointrequest: TelstraTPN::Vnfendpointrequest.new # Vnfendpointrequest | 
}

begin
  #Instantiate Virtual Network Function
  result = api_instance.inventory_vnfendpoint(opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->inventory_vnfendpoint: #{e}"
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



# **marketplace_image**
> InlineResponse2009 marketplace_image

List images in the Marketplace

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new

begin
  #List images in the Marketplace
  result = api_instance.marketplace_image
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->marketplace_image: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketplace_image_add**
> InlineResponse20010 marketplace_image_add(imageid, opts)

Add specified image to \"My Images\"

Note that trailing / is required, body must be {}

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
imageid = 56 # Integer | Identifier representing a specific VNF image
opts = {
  unknown_base_type: TelstraTPN::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | 
}

begin
  #Add specified image to \"My Images\"
  result = api_instance.marketplace_image_add(imageid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->marketplace_image_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageid** | **Integer**| Identifier representing a specific VNF image | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, 



# **marketplace_image_imageid**
> Image marketplace_image_imageid(imageid)

Get information about the specified image

Note that trailing / is required

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
imageid = 56 # Integer | Identifier representing a specific VNF image

begin
  #Get information about the specified image
  result = api_instance.marketplace_image_imageid(imageid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->marketplace_image_imageid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageid** | **Integer**| Identifier representing a specific VNF image | 

### Return type

[**Image**](Image.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketplace_image_my_images**
> InlineResponse2009 marketplace_image_my_images

List images in \"My Images\"

Note that trailing / is required

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new

begin
  #List images in \"My Images\"
  result = api_instance.marketplace_image_my_images
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->marketplace_image_my_images: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketplace_image_remove**
> InlineResponse20010 marketplace_image_remove(imageid, opts)

Remove specified image from \"My Images\"

Note that trailing / is required, body must be {}

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
imageid = 56 # Integer | Identifier representing a specific VNF image
opts = {
  unknown_base_type: TelstraTPN::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | 
}

begin
  #Remove specified image from \"My Images\"
  result = api_instance.marketplace_image_remove(imageid, opts)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->marketplace_image_remove: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageid** | **Integer**| Identifier representing a specific VNF image | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, 



# **vnf**
> InlineResponse20011 vnf(vnfuuid)

Get status information about the specified VNF

'Possible return values:   ACTIVE,   BUILD,   SHUTOFF,   VERIFY_RESIZE,   PAUSED,   SUSPENDED,   RESCUE,   ERROR,   DELETED,   SOFT_DELETED,   SHELVED,   SHELVED_OFFLOADED'

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
vnfuuid = 'vnfuuid_example' # String | Unique identifier representing a specific virtual network function

begin
  #Get status information about the specified VNF
  result = api_instance.vnf(vnfuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->vnf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vnfuuid** | **String**| Unique identifier representing a specific virtual network function | 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vnf_reboot**
> vnf_reboot(vnfuuid, opts)

Reboot the specified VNF

reboot_type is 'warm' or 'cold'

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
vnfuuid = 'vnfuuid_example' # String | Unique identifier representing a specific virtual network function
opts = {
  rebootrequest: TelstraTPN::Rebootrequest.new # Rebootrequest | 
}

begin
  #Reboot the specified VNF
  api_instance.vnf_reboot(vnfuuid, opts)
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->vnf_reboot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vnfuuid** | **String**| Unique identifier representing a specific virtual network function | 
 **rebootrequest** | [**Rebootrequest**](Rebootrequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml



# **vnf_resume**
> vnf_resume(vnfuuid)

Resume the specified VNF

Note that body must be {}

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
vnfuuid = 'vnfuuid_example' # String | Unique identifier representing a specific virtual network function

begin
  #Resume the specified VNF
  api_instance.vnf_resume(vnfuuid)
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->vnf_resume: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vnfuuid** | **String**| Unique identifier representing a specific virtual network function | 

### Return type

nil (empty response body)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **vnf_suspend**
> vnf_suspend(vnfuuid)

Suspend the specified VNF

Note that body must be {}

### Example
```ruby
# load the gem
require 'TelstraTPN'
# setup authorization
TelstraTPN.configure do |config|
  # Configure OAuth2 access token for authorization: oAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TelstraTPN::VnfsApi.new
vnfuuid = 'vnfuuid_example' # String | Unique identifier representing a specific virtual network function

begin
  #Suspend the specified VNF
  api_instance.vnf_suspend(vnfuuid)
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->vnf_suspend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vnfuuid** | **String**| Unique identifier representing a specific virtual network function | 

### Return type

nil (empty response body)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



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

api_instance = TelstraTPN::VnfsApi.new
vnfuuid = 'vnfuuid_example' # String | Unique identifier representing a specific virtual network function

begin
  #Get details of a specific VNF
  result = api_instance.vnfendpoint_vnfuuid(vnfuuid)
  p result
rescue TelstraTPN::ApiError => e
  puts "Exception when calling VnfsApi->vnfendpoint_vnfuuid: #{e}"
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



