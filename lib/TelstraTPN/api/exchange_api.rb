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
  class ExchangeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the current account's Exchange profile
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20012]
    def account_profile_exchange(opts = {})
      data, _status_code, _headers = account_profile_exchange_with_http_info(opts)
      data
    end

    # Get the current account&#39;s Exchange profile
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def account_profile_exchange_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExchangeApi.account_profile_exchange ...'
      end
      # resource path
      local_var_path = '/1.0.0/account/profile/exchange'

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
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeApi#account_profile_exchange\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all Exchange providers, with POPs
    # @param [Hash] opts the optional parameters
    # @return [Array<ExchangeProvider>]
    def exchange(opts = {})
      data, _status_code, _headers = exchange_with_http_info(opts)
      data
    end

    # List all Exchange providers, with POPs
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ExchangeProvider>, Fixnum, Hash)>] Array<ExchangeProvider> data, response status code and response headers
    def exchange_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExchangeApi.exchange ...'
      end
      # resource path
      local_var_path = '/1.0.0/exchange'

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
        :return_type => 'Array<ExchangeProvider>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeApi#exchange\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Exchange provider details
    # Get information about the specified Exchange provider
    # @param exprovuuid Unique identifier representing a specific exchange provider
    # @param [Hash] opts the optional parameters
    # @return [ExchangeProvider]
    def exchange_exprovuuid(exprovuuid, opts = {})
      data, _status_code, _headers = exchange_exprovuuid_with_http_info(exprovuuid, opts)
      data
    end

    # Exchange provider details
    # Get information about the specified Exchange provider
    # @param exprovuuid Unique identifier representing a specific exchange provider
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExchangeProvider, Fixnum, Hash)>] ExchangeProvider data, response status code and response headers
    def exchange_exprovuuid_with_http_info(exprovuuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExchangeApi.exchange_exprovuuid ...'
      end
      # verify the required parameter 'exprovuuid' is set
      if @api_client.config.client_side_validation && exprovuuid.nil?
        fail ArgumentError, "Missing the required parameter 'exprovuuid' when calling ExchangeApi.exchange_exprovuuid"
      end
      # resource path
      local_var_path = '/1.0.0/exchange/{exprovuuid}'.sub('{' + 'exprovuuid' + '}', exprovuuid.to_s)

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
        :return_type => 'ExchangeProvider')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeApi#exchange_exprovuuid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get list of Visit Cards
    # @param [Hash] opts the optional parameters
    # @return [Array<Visitcard>]
    def visitcard(opts = {})
      data, _status_code, _headers = visitcard_with_http_info(opts)
      data
    end

    # Get list of Visit Cards
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Visitcard>, Fixnum, Hash)>] Array<Visitcard> data, response status code and response headers
    def visitcard_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExchangeApi.visitcard ...'
      end
      # resource path
      local_var_path = '/1.0.0/visitcard'

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
        :return_type => 'Array<Visitcard>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeApi#visitcard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # View details of the specified Visit Card
    # @param visitcarduuid Unique identifier representing a specific exchange visit card (provider description)
    # @param [Hash] opts the optional parameters
    # @return [Visitcard]
    def visitcard_uuid_get(visitcarduuid, opts = {})
      data, _status_code, _headers = visitcard_uuid_get_with_http_info(visitcarduuid, opts)
      data
    end

    # View details of the specified Visit Card
    # @param visitcarduuid Unique identifier representing a specific exchange visit card (provider description)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Visitcard, Fixnum, Hash)>] Visitcard data, response status code and response headers
    def visitcard_uuid_get_with_http_info(visitcarduuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExchangeApi.visitcard_uuid_get ...'
      end
      # verify the required parameter 'visitcarduuid' is set
      if @api_client.config.client_side_validation && visitcarduuid.nil?
        fail ArgumentError, "Missing the required parameter 'visitcarduuid' when calling ExchangeApi.visitcard_uuid_get"
      end
      # resource path
      local_var_path = '/1.0.0/visitcard/{visitcarduuid}'.sub('{' + 'visitcarduuid' + '}', visitcarduuid.to_s)

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
        :return_type => 'Visitcard')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeApi#visitcard_uuid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update details of the specified Visit Card
    # @param visitcarduuid Unique identifier representing a specific exchange visit card (provider description)
    # @param [Hash] opts the optional parameters
    # @option opts [UNKNOWN_BASE_TYPE] :unknown_base_type 
    # @return [Visitcard]
    def visitcard_uuid_put(visitcarduuid, opts = {})
      data, _status_code, _headers = visitcard_uuid_put_with_http_info(visitcarduuid, opts)
      data
    end

    # Update details of the specified Visit Card
    # @param visitcarduuid Unique identifier representing a specific exchange visit card (provider description)
    # @param [Hash] opts the optional parameters
    # @option opts [UNKNOWN_BASE_TYPE] :unknown_base_type 
    # @return [Array<(Visitcard, Fixnum, Hash)>] Visitcard data, response status code and response headers
    def visitcard_uuid_put_with_http_info(visitcarduuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExchangeApi.visitcard_uuid_put ...'
      end
      # verify the required parameter 'visitcarduuid' is set
      if @api_client.config.client_side_validation && visitcarduuid.nil?
        fail ArgumentError, "Missing the required parameter 'visitcarduuid' when calling ExchangeApi.visitcard_uuid_put"
      end
      # resource path
      local_var_path = '/1.0.0/visitcard/{visitcarduuid}'.sub('{' + 'visitcarduuid' + '}', visitcarduuid.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'unknown_base_type'])
      auth_names = ['oAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Visitcard')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeApi#visitcard_uuid_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
