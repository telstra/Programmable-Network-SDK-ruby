=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.4.2
Contact: pnapi-support@team.telstra.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.1.2

=end

require 'uri'

module TelstraTPN
  class ContractsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create new Contract on specified link
    # @param linkid Unique identifier representing a specific link
    # @param [Hash] opts the optional parameters
    # @option opts [Createcontractrequest] :createcontractrequest 
    # @return [SuccessFragment]
    def inventory_links_contract(linkid, opts = {})
      data, _status_code, _headers = inventory_links_contract_with_http_info(linkid, opts)
      data
    end

    # Create new Contract on specified link
    # @param linkid Unique identifier representing a specific link
    # @param [Hash] opts the optional parameters
    # @option opts [Createcontractrequest] :createcontractrequest 
    # @return [Array<(SuccessFragment, Fixnum, Hash)>] SuccessFragment data, response status code and response headers
    def inventory_links_contract_with_http_info(linkid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.inventory_links_contract ...'
      end
      # verify the required parameter 'linkid' is set
      if @api_client.config.client_side_validation && linkid.nil?
        fail ArgumentError, "Missing the required parameter 'linkid' when calling ContractsApi.inventory_links_contract"
      end
      # resource path
      local_var_path = '/1.0.0/inventory/links/{linkid}/contract'.sub('{' + 'linkid' + '}', linkid.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'createcontractrequest'])
      auth_names = ['oAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessFragment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#inventory_links_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get active Contract by ContractID
    # @param linkid Unique identifier representing a specific link
    # @param contractid Unique identifier representing a specific contract
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2006]
    def inventory_links_contract_get(linkid, contractid, opts = {})
      data, _status_code, _headers = inventory_links_contract_get_with_http_info(linkid, contractid, opts)
      data
    end

    # Get active Contract by ContractID
    # @param linkid Unique identifier representing a specific link
    # @param contractid Unique identifier representing a specific contract
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2006, Fixnum, Hash)>] InlineResponse2006 data, response status code and response headers
    def inventory_links_contract_get_with_http_info(linkid, contractid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.inventory_links_contract_get ...'
      end
      # verify the required parameter 'linkid' is set
      if @api_client.config.client_side_validation && linkid.nil?
        fail ArgumentError, "Missing the required parameter 'linkid' when calling ContractsApi.inventory_links_contract_get"
      end
      # verify the required parameter 'contractid' is set
      if @api_client.config.client_side_validation && contractid.nil?
        fail ArgumentError, "Missing the required parameter 'contractid' when calling ContractsApi.inventory_links_contract_get"
      end
      # resource path
      local_var_path = '/1.0.0/inventory/links/{linkid}/contract/{contractid}'.sub('{' + 'linkid' + '}', linkid.to_s).sub('{' + 'contractid' + '}', contractid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2006')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#inventory_links_contract_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update active Contract by ContractID
    # @param linkid Unique identifier representing a specific link
    # @param contractid Unique identifier representing a specific contract
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @return [SuccessFragment]
    def inventory_links_contract_put(linkid, contractid, opts = {})
      data, _status_code, _headers = inventory_links_contract_put_with_http_info(linkid, contractid, opts)
      data
    end

    # Update active Contract by ContractID
    # @param linkid Unique identifier representing a specific link
    # @param contractid Unique identifier representing a specific contract
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @return [Array<(SuccessFragment, Fixnum, Hash)>] SuccessFragment data, response status code and response headers
    def inventory_links_contract_put_with_http_info(linkid, contractid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.inventory_links_contract_put ...'
      end
      # verify the required parameter 'linkid' is set
      if @api_client.config.client_side_validation && linkid.nil?
        fail ArgumentError, "Missing the required parameter 'linkid' when calling ContractsApi.inventory_links_contract_put"
      end
      # verify the required parameter 'contractid' is set
      if @api_client.config.client_side_validation && contractid.nil?
        fail ArgumentError, "Missing the required parameter 'contractid' when calling ContractsApi.inventory_links_contract_put"
      end
      # resource path
      local_var_path = '/1.0.0/inventory/links/{linkid}/contract/{contractid}'.sub('{' + 'linkid' + '}', linkid.to_s).sub('{' + 'contractid' + '}', contractid.to_s)

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
      auth_names = ['oAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessFragment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#inventory_links_contract_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
