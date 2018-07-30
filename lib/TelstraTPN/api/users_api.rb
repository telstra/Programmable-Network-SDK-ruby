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
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List users
    # List all users associated with the specified customer
    # @param customeruuid Unique identifier representing a specific customer
    # @param [Hash] opts the optional parameters
    # @return [Array<User>]
    def account_user(customeruuid, opts = {})
      data, _status_code, _headers = account_user_with_http_info(customeruuid, opts)
      data
    end

    # List users
    # List all users associated with the specified customer
    # @param customeruuid Unique identifier representing a specific customer
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<User>, Fixnum, Hash)>] Array<User> data, response status code and response headers
    def account_user_with_http_info(customeruuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.account_user ...'
      end
      # verify the required parameter 'customeruuid' is set
      if @api_client.config.client_side_validation && customeruuid.nil?
        fail ArgumentError, "Missing the required parameter 'customeruuid' when calling UsersApi.account_user"
      end
      # resource path
      local_var_path = '/1.0.0/account/{customeruuid}/user'.sub('{' + 'customeruuid' + '}', customeruuid.to_s)

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
        :return_type => 'Array<User>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#account_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
