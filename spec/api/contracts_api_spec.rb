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

# Unit tests for TelstraTPN::ContractsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContractsApi' do
  before do
    # run before each test
    @instance = TelstraTPN::ContractsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContractsApi' do
    it 'should create an instance of ContractsApi' do
      expect(@instance).to be_instance_of(TelstraTPN::ContractsApi)
    end
  end

  # unit tests for inventorylinksget
  # Get active Contract by ContractID
  # 
  # @param linkid Unique identifier representing a specific link
  # @param contractid Unique identifier representing a specific contract
  # @param [Hash] opts the optional parameters
  # @option opts [Body2] :body 
  # @return [InlineResponse2008]
  describe 'inventorylinksget test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventorylinkslinkidcontractpost
  # Create new Contract on specified link
  # 
  # @param linkid Unique identifier representing a specific link
  # @param [Hash] opts the optional parameters
  # @option opts [Body1] :body 
  # @return [nil]
  describe 'inventorylinkslinkidcontractpost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventorylinksput
  # Update active Contract by ContractID
  # 
  # @param linkid Unique identifier representing a specific link
  # @param contractid Unique identifier representing a specific contract
  # @param [Hash] opts the optional parameters
  # @option opts [Body3] :body 
  # @return [nil]
  describe 'inventorylinksput test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
