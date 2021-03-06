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

# Unit tests for TelstraTPN::VnfsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VnfsApi' do
  before do
    # run before each test
    @instance = TelstraTPN::VnfsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VnfsApi' do
    it 'should create an instance of VnfsApi' do
      expect(@instance).to be_instance_of(TelstraTPN::VnfsApi)
    end
  end

  # unit tests for inventoryvnfendpointpost
  # Instantiate Virtual Network Function
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Body7] :body 
  # @return [nil]
  describe 'inventoryvnfendpointpost test' do
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

  # unit tests for marketplaceimageget
  # List images in the Marketplace
  # 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20010]
  describe 'marketplaceimageget test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketplaceimageimageidaddtomyimagespost
  # Add specified image to \&quot;My Images\&quot;
  # Note that trailing / is required, body must be {}
  # @param imageid Identifier representing a specific VNF image
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [InlineResponse20011]
  describe 'marketplaceimageimageidaddtomyimagespost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketplaceimageimageidget
  # Get information about the specified image
  # Note that trailing / is required
  # @param imageid Identifier representing a specific VNF image
  # @param [Hash] opts the optional parameters
  # @return [Image]
  describe 'marketplaceimageimageidget test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketplaceimageimageidremovefrommyimagespost
  # Remove specified image from \&quot;My Images\&quot;
  # Note that trailing / is required, body must be {}
  # @param imageid Identifier representing a specific VNF image
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [InlineResponse20011]
  describe 'marketplaceimageimageidremovefrommyimagespost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketplaceimagemyimagesget
  # List images in \&quot;My Images\&quot;
  # Note that trailing / is required
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20010]
  describe 'marketplaceimagemyimagesget test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vnfdsvnfvnfuuidget
  # Get status information about the specified VNF
  # &#39;Possible return values:   ACTIVE,   BUILD,   SHUTOFF,   VERIFY_RESIZE,   PAUSED,   SUSPENDED,   RESCUE,   ERROR,   DELETED,   SOFT_DELETED,   SHELVED,   SHELVED_OFFLOADED&#39;
  # @param vnfuuid Unique identifier representing a specific virtual network function
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20014]
  describe 'vnfdsvnfvnfuuidget test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vnfdsvnfvnfuuidrebootpost
  # Reboot the specified VNF
  # reboot_type is &#39;warm&#39; or &#39;cold&#39;
  # @param vnfuuid Unique identifier representing a specific virtual network function
  # @param [Hash] opts the optional parameters
  # @option opts [Body14] :body 
  # @return [nil]
  describe 'vnfdsvnfvnfuuidrebootpost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vnfdsvnfvnfuuidresumepost
  # Resume the specified VNF
  # Note that body must be {}
  # @param vnfuuid Unique identifier representing a specific virtual network function
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'vnfdsvnfvnfuuidresumepost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for vnfdsvnfvnfuuidsuspendpost
  # Suspend the specified VNF
  # Note that body must be {}
  # @param vnfuuid Unique identifier representing a specific virtual network function
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'vnfdsvnfvnfuuidsuspendpost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
