=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.4.2
Contact: pnapi-support@team.telstra.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.0.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TelstraTPN::InlineResponse202
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InlineResponse202' do
  before do
    # run before each test
    @instance = TelstraTPN::InlineResponse202.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse202' do
    it 'should create an instance of InlineResponse202' do
      expect(@instance).to be_instance_of(TelstraTPN::InlineResponse202)
    end
  end
  describe 'test attribute "success"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "errormsg"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
