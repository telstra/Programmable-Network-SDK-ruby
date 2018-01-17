=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.1.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module TelstraTPN
  class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an authentication token
    # Create an authentication token
    # @param grant_type 
    # @param username 
    # @param password 
    # @param [Hash] opts the optional parameters
    # @return [AuthGeneratetokenResponse]
    def auth_generatetoken_post(grant_type, username, password, opts = {})
      data, _status_code, _headers = auth_generatetoken_post_with_http_info(grant_type, username, password, opts)
      return data
    end

    # Create an authentication token
    # Create an authentication token
    # @param grant_type 
    # @param username 
    # @param password 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthGeneratetokenResponse, Fixnum, Hash)>] AuthGeneratetokenResponse data, response status code and response headers
    def auth_generatetoken_post_with_http_info(grant_type, username, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthenticationApi.auth_generatetoken_post ..."
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling AuthenticationApi.auth_generatetoken_post"
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling AuthenticationApi.auth_generatetoken_post"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling AuthenticationApi.auth_generatetoken_post"
      end
      # resource path
      local_var_path = "/1.0.0/auth/generatetoken"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["grant_type"] = grant_type
      form_params["username"] = username
      form_params["password"] = password

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AuthGeneratetokenResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#auth_generatetoken_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate authentication token
    # Validate the authentication token and get information about the user (roles, permissions, etc.)
    # @param [Hash] opts the optional parameters
    # @return [AuthValidatetokenResponse]
    def auth_validatetoken_get(opts = {})
      data, _status_code, _headers = auth_validatetoken_get_with_http_info(opts)
      return data
    end

    # Validate authentication token
    # Validate the authentication token and get information about the user (roles, permissions, etc.)
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthValidatetokenResponse, Fixnum, Hash)>] AuthValidatetokenResponse data, response status code and response headers
    def auth_validatetoken_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthenticationApi.auth_validatetoken_get ..."
      end
      # resource path
      local_var_path = "/1.0.0/auth/validatetoken"

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
        :return_type => 'AuthValidatetokenResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#auth_validatetoken_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
