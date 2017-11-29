=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.1.2

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
    # @return [Model100AuthGeneratetokenResponse]
    def create_an_authentication_token(grant_type, username, password, opts = {})
      data, _status_code, _headers = create_an_authentication_token_with_http_info(grant_type, username, password, opts)
      return data
    end

    # Create an authentication token
    # Create an authentication token
    # @param grant_type 
    # @param username 
    # @param password 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Model100AuthGeneratetokenResponse, Fixnum, Hash)>] Model100AuthGeneratetokenResponse data, response status code and response headers
    def create_an_authentication_token_with_http_info(grant_type, username, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthenticationApi.create_an_authentication_token ..."
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling AuthenticationApi.create_an_authentication_token"
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling AuthenticationApi.create_an_authentication_token"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling AuthenticationApi.create_an_authentication_token"
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
      auth_names = ['auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Model100AuthGeneratetokenResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#create_an_authentication_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate authentication token
    # Validate the authentication token and get information about the user (roles, permissions, etc.)
    # @param [Hash] opts the optional parameters
    # @return [Model100AuthValidatetokenResponse]
    def validate_authentication_token(opts = {})
      data, _status_code, _headers = validate_authentication_token_with_http_info(opts)
      return data
    end

    # Validate authentication token
    # Validate the authentication token and get information about the user (roles, permissions, etc.)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Model100AuthValidatetokenResponse, Fixnum, Hash)>] Model100AuthValidatetokenResponse data, response status code and response headers
    def validate_authentication_token_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthenticationApi.validate_authentication_token ..."
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
      auth_names = ['auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Model100AuthValidatetokenResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#validate_authentication_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
