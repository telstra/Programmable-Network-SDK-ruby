# TelstraTPN::Backup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_name** | **String** | User-defined name referring to the backup | [optional] 
**uuid** | **String** | UUID of the backup instance | [optional] 
**vnf_uuid** | **String** | UUID of the VNF being backed up | [optional] 
**glance_image_id** | **String** | UUID of the underlying image id for the backup | [optional] 
**backup_schedule_uuid** | **String** |  | [optional] 
**total_interfaces** | **Integer** | Number of virtual interfaces active when the VNF was backed up | [optional] 
**backup_started_at** | **String** | Time at which backup was started YYYY-MM-DD HH:MM:SS.S | [optional] 
**backup_completed_at** | **String** | Time at which backup was completed YYYY-MM-DD HH:MM:SS.S | [optional] 
**backup_restored_at** | **String** | Time at which backup was most recently restored YYYY-MM-DD HH:MM:SS.S | [optional] 
**backup_restored_by** | **String** | UUID of the user who most recently restored the backup | [optional] 
**replace_backup_uuid** | **String** | UUID of the backup that the current backup replaced | [optional] 
**status** | **String** | Description of the current state of the backup | [optional] 
**status_code** | **String** | \&quot;Unique code representing the current state of the backup:   CRG&#x3D;Creating, CRE&#x3D;Created, DLG&#x3D;Deleting, DEL&#x3D;Deleted,   REG&#x3D;Restoring, ACT&#x3D;Active/Restored\&quot; | [optional] 


