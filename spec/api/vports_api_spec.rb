=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.1.2

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

  # unit tests for create_v_port_for_physical_endpoint
  # Create VPort for physical endpoint
  # Create VPort representing a VLAN on a Physical Ethernet Port
  # @param [Hash] opts the optional parameters
  # @option opts [Model100InventoryRegularvportRequest] :body 
  # @return [Model100InventoryRegularvportResponse]
  describe 'create_v_port_for_physical_endpoint test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_vnf_v_port
  # Create VNF VPort
  # Create VNF VPort
  # @param [Hash] opts the optional parameters
  # @option opts [Model100InventoryVnfVportRequest] :body 
  # @return [Model100InventoryVnfVportResponse]
  describe 'create_vnf_v_port test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_information_about_the_specified_v_port
  # Get information about the specified VPort
  # Get information about the specified VPort
  # @param vportuuid Unique identifier representing a specific virtual port
  # @param [Hash] opts the optional parameters
  # @return [EndpointPort]
  describe 'get_information_about_the_specified_v_port test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end