=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TelstraTPN::Model100InventoryLinksContractRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Model100InventoryLinksContractRequest' do
  before do
    # run before each test
    @instance = TelstraTPN::Model100InventoryLinksContractRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Model100InventoryLinksContractRequest' do
    it 'should create an instance of Model100InventoryLinksContractRequest' do
      expect(@instance).to be_instance_of(TelstraTPN::Model100InventoryLinksContractRequest)
    end
  end
  describe 'test attribute "renewal_option"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

