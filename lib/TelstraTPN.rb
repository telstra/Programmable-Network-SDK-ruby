=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

# Common files
require 'TelstraTPN/api_client'
require 'TelstraTPN/api_error'
require 'TelstraTPN/version'
require 'TelstraTPN/configuration'

# Models
require 'TelstraTPN/models/billing'
require 'TelstraTPN/models/classification'
require 'TelstraTPN/models/contract'
require 'TelstraTPN/models/datacenter'
require 'TelstraTPN/models/endpoint'
require 'TelstraTPN/models/endpoint_port'
require 'TelstraTPN/models/endpointlist'
require 'TelstraTPN/models/error'
require 'TelstraTPN/models/error70'
require 'TelstraTPN/models/flavor'
require 'TelstraTPN/models/glance_image'
require 'TelstraTPN/models/link'
require 'TelstraTPN/models/link62'
require 'TelstraTPN/models/meta'
require 'TelstraTPN/models/model_100_account_response'
require 'TelstraTPN/models/model_100_auth_generatetoken_response'
require 'TelstraTPN/models/model_100_auth_validatetoken_response'
require 'TelstraTPN/models/model_100_inventory_datacenters401_error'
require 'TelstraTPN/models/model_100_inventory_datacenters_response'
require 'TelstraTPN/models/model_100_inventory_endpoint_response'
require 'TelstraTPN/models/model_100_inventory_endpoints_customeruuid_response'
require 'TelstraTPN/models/model_100_inventory_link_request'
require 'TelstraTPN/models/model_100_inventory_link_response'
require 'TelstraTPN/models/model_100_inventory_links_contract_request'
require 'TelstraTPN/models/model_100_inventory_links_contract_request35'
require 'TelstraTPN/models/model_100_inventory_links_contract_response'
require 'TelstraTPN/models/model_100_inventory_links_contract_response31'
require 'TelstraTPN/models/model_100_inventory_links_contract_response36'
require 'TelstraTPN/models/model_100_inventory_links_history_response'
require 'TelstraTPN/models/model_100_inventory_links_response'
require 'TelstraTPN/models/model_100_inventory_regularendpoint_request'
require 'TelstraTPN/models/model_100_inventory_regularendpoint_response'
require 'TelstraTPN/models/model_100_inventory_regularvport_request'
require 'TelstraTPN/models/model_100_inventory_regularvport_response'
require 'TelstraTPN/models/model_100_inventory_vnf_vport_request'
require 'TelstraTPN/models/model_100_inventory_vnf_vport_response'
require 'TelstraTPN/models/model_100_inventory_vnfendpoint_request'
require 'TelstraTPN/models/model_100_inventory_vnfendpoint_response'
require 'TelstraTPN/models/model_100_marketplace_image_response'
require 'TelstraTPN/models/object50'
require 'TelstraTPN/models/params'
require 'TelstraTPN/models/params29'
require 'TelstraTPN/models/params32'
require 'TelstraTPN/models/params37'
require 'TelstraTPN/models/product'
require 'TelstraTPN/models/role'
require 'TelstraTPN/models/success_fragment'
require 'TelstraTPN/models/topology'
require 'TelstraTPN/models/ttms100_topology_tag_objects_response'
require 'TelstraTPN/models/ttms100_topology_tag_request'
require 'TelstraTPN/models/user'
require 'TelstraTPN/models/vlan'
require 'TelstraTPN/models/vnf_tag'
require 'TelstraTPN/models/vport'
require 'TelstraTPN/models/vportvalue'

# APIs
require 'TelstraTPN/api/authentication_api'
require 'TelstraTPN/api/contracts_api'
require 'TelstraTPN/api/customers_api'
require 'TelstraTPN/api/datacentres_api'
require 'TelstraTPN/api/endpoints_api'
require 'TelstraTPN/api/links_api'
require 'TelstraTPN/api/topologies_api'
require 'TelstraTPN/api/vnfs_api'
require 'TelstraTPN/api/vports_api'

module TelstraTPN
  class << self
    # Customize default settings for the SDK using block.
    #   TelstraTPN.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
