=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.3.3
Contact: pnapi-support@team.telstra.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for TelstraTPN::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = TelstraTPN::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(TelstraTPN::UsersApi)
    end
  end

  # unit tests for accountcustomeruuiduserget
  # List users
  # List all users associated with the specified customer
  # @param customeruuid Unique identifier representing a specific customer
  # @param [Hash] opts the optional parameters
  # @return [Array<User>]
  describe 'accountcustomeruuiduserget test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
