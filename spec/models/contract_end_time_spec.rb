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
require 'date'

# Unit tests for TelstraTPN::ContractEndTime
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContractEndTime' do
  before do
    # run before each test
    @instance = TelstraTPN::ContractEndTime.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContractEndTime' do
    it 'should create an instance of ContractEndTime' do
      expect(@instance).to be_instance_of(TelstraTPN::ContractEndTime)
    end
  end
end

