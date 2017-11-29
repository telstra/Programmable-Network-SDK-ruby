=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for TelstraTPN::AuthenticationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthenticationApi' do
  before do
    # run before each test
    @instance = TelstraTPN::AuthenticationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticationApi' do
    it 'should create an instance of AuthenticationApi' do
      expect(@instance).to be_instance_of(TelstraTPN::AuthenticationApi)
    end
  end

  # unit tests for create_an_authentication_token
  # Create an authentication token
  # Create an authentication token
  # @param grant_type 
  # @param username 
  # @param password 
  # @param [Hash] opts the optional parameters
  # @return [Model100AuthGeneratetokenResponse]
  describe 'create_an_authentication_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_authentication_token
  # Validate authentication token
  # Validate the authentication token and get information about the user (roles, permissions, etc.)
  # @param [Hash] opts the optional parameters
  # @return [Model100AuthValidatetokenResponse]
  describe 'validate_authentication_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
