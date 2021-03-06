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

# Unit tests for TelstraTPN::VportsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VportsApi' do
  before do
    # run before each test
    @instance = TelstraTPN::VportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VportsApi' do
    it 'should create an instance of VportsApi' do
      expect(@instance).to be_instance_of(TelstraTPN::VportsApi)
    end
  end

  # unit tests for inventoryregularvportpost
  # Create VPort for physical endpoint
  # Create VPort representing a VLAN on a Physical Ethernet Port
  # @param [Hash] opts the optional parameters
  # @option opts [Body5] :body 
  # @return [nil]
  describe 'inventoryregularvportpost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventoryvnfvportpost
  # Create VNF VPort
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Body6] :body 
  # @return [InlineResponse2009]
  describe 'inventoryvnfvportpost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventoryvportvportuuidget
  # Get information about the specified VPort
  # 
  # @param vportuuid Unique identifier representing a specific virtual port
  # @param [Hash] opts the optional parameters
  # @return [EndpointPort]
  describe 'inventoryvportvportuuidget test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
