=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.1.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module TelstraTPN
  class ContractsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get active Contract by ContractID
    # Get active Contract by ContractID
    # @param linkid Unique identifier representing a specific link
    # @param contractid Unique identifier representing a specific contract
    # @param [Hash] opts the optional parameters
    # @return [Model100InventoryLinksContractResponse]
    def 100_inventory_links_contract_by_linkid_and_contractid_get(linkid, contractid, opts = {})
      data, _status_code, _headers = 100_inventory_links_contract_by_linkid_and_contractid_get_with_http_info(linkid, contractid, opts)
      return data
    end

    # Get active Contract by ContractID
    # Get active Contract by ContractID
    # @param linkid Unique identifier representing a specific link
    # @param contractid Unique identifier representing a specific contract
    # @param [Hash] opts the optional parameters
    # @return [Array<(Model100InventoryLinksContractResponse, Fixnum, Hash)>] Model100InventoryLinksContractResponse data, response status code and response headers
    def 100_inventory_links_contract_by_linkid_and_contractid_get_with_http_info(linkid, contractid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContractsApi.100_inventory_links_contract_by_linkid_and_contractid_get ..."
      end
      # verify the required parameter 'linkid' is set
      if @api_client.config.client_side_validation && linkid.nil?
        fail ArgumentError, "Missing the required parameter 'linkid' when calling ContractsApi.100_inventory_links_contract_by_linkid_and_contractid_get"
      end
      # verify the required parameter 'contractid' is set
      if @api_client.config.client_side_validation && contractid.nil?
        fail ArgumentError, "Missing the required parameter 'contractid' when calling ContractsApi.100_inventory_links_contract_by_linkid_and_contractid_get"
      end
      # resource path
      local_var_path = "/1.0.0/inventory/links/{linkid}/contract/{contractid}".sub('{' + 'linkid' + '}', linkid.to_s).sub('{' + 'contractid' + '}', contractid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Model100InventoryLinksContractResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#100_inventory_links_contract_by_linkid_and_contractid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update active Contract by ContractID
    # Update active Contract by ContractID
    # @param linkid Unique identifier representing a specific link
    # @param contractid Unique identifier representing a specific contract
    # @param [Hash] opts the optional parameters
    # @option opts [Model100InventoryLinksContractRequest] :body 
    # @return [Model100InventoryLinksContractResponse33]
    def 100_inventory_links_contract_by_linkid_and_contractid_put(linkid, contractid, opts = {})
      data, _status_code, _headers = 100_inventory_links_contract_by_linkid_and_contractid_put_with_http_info(linkid, contractid, opts)
      return data
    end

    # Update active Contract by ContractID
    # Update active Contract by ContractID
    # @param linkid Unique identifier representing a specific link
    # @param contractid Unique identifier representing a specific contract
    # @param [Hash] opts the optional parameters
    # @option opts [Model100InventoryLinksContractRequest] :body 
    # @return [Array<(Model100InventoryLinksContractResponse33, Fixnum, Hash)>] Model100InventoryLinksContractResponse33 data, response status code and response headers
    def 100_inventory_links_contract_by_linkid_and_contractid_put_with_http_info(linkid, contractid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContractsApi.100_inventory_links_contract_by_linkid_and_contractid_put ..."
      end
      # verify the required parameter 'linkid' is set
      if @api_client.config.client_side_validation && linkid.nil?
        fail ArgumentError, "Missing the required parameter 'linkid' when calling ContractsApi.100_inventory_links_contract_by_linkid_and_contractid_put"
      end
      # verify the required parameter 'contractid' is set
      if @api_client.config.client_side_validation && contractid.nil?
        fail ArgumentError, "Missing the required parameter 'contractid' when calling ContractsApi.100_inventory_links_contract_by_linkid_and_contractid_put"
      end
      # resource path
      local_var_path = "/1.0.0/inventory/links/{linkid}/contract/{contractid}".sub('{' + 'linkid' + '}', linkid.to_s).sub('{' + 'contractid' + '}', contractid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Model100InventoryLinksContractResponse33')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#100_inventory_links_contract_by_linkid_and_contractid_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new Contract on specified link
    # Create new Contract on specified link
    # @param linkid Unique identifier representing a specific link
    # @param [Hash] opts the optional parameters
    # @option opts [Model100InventoryLinksContractRequest37] :body 
    # @return [Model100InventoryLinksContractResponse38]
    def 100_inventory_links_contract_by_linkid_post(linkid, opts = {})
      data, _status_code, _headers = 100_inventory_links_contract_by_linkid_post_with_http_info(linkid, opts)
      return data
    end

    # Create new Contract on specified link
    # Create new Contract on specified link
    # @param linkid Unique identifier representing a specific link
    # @param [Hash] opts the optional parameters
    # @option opts [Model100InventoryLinksContractRequest37] :body 
    # @return [Array<(Model100InventoryLinksContractResponse38, Fixnum, Hash)>] Model100InventoryLinksContractResponse38 data, response status code and response headers
    def 100_inventory_links_contract_by_linkid_post_with_http_info(linkid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContractsApi.100_inventory_links_contract_by_linkid_post ..."
      end
      # verify the required parameter 'linkid' is set
      if @api_client.config.client_side_validation && linkid.nil?
        fail ArgumentError, "Missing the required parameter 'linkid' when calling ContractsApi.100_inventory_links_contract_by_linkid_post"
      end
      # resource path
      local_var_path = "/1.0.0/inventory/links/{linkid}/contract".sub('{' + 'linkid' + '}', linkid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Model100InventoryLinksContractResponse38')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#100_inventory_links_contract_by_linkid_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
