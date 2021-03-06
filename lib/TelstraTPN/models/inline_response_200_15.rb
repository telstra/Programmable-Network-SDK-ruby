=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.4.0
Contact: pnapi-support@team.telstra.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module TelstraTPN

  class InlineResponse20015
    attr_accessor :compute_hostname

    attr_accessor :customeruuid

    attr_accessor :datacenteruuid

    attr_accessor :flavoruuid

    attr_accessor :floating_ip

    attr_accessor :imageuuid

    attr_accessor :instance_uuid

    attr_accessor :status

    attr_accessor :vnfuuid

    attr_accessor :vportcount


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'compute_hostname' => :'compute_hostname',
        :'customeruuid' => :'customeruuid',
        :'datacenteruuid' => :'datacenteruuid',
        :'flavoruuid' => :'flavoruuid',
        :'floating_ip' => :'floating_ip',
        :'imageuuid' => :'imageuuid',
        :'instance_uuid' => :'instance_uuid',
        :'status' => :'status',
        :'vnfuuid' => :'vnfuuid',
        :'vportcount' => :'vportcount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'compute_hostname' => :'String',
        :'customeruuid' => :'String',
        :'datacenteruuid' => :'String',
        :'flavoruuid' => :'Integer',
        :'floating_ip' => :'String',
        :'imageuuid' => :'Integer',
        :'instance_uuid' => :'String',
        :'status' => :'String',
        :'vnfuuid' => :'String',
        :'vportcount' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'compute_hostname')
        self.compute_hostname = attributes[:'compute_hostname']
      end

      if attributes.has_key?(:'customeruuid')
        self.customeruuid = attributes[:'customeruuid']
      end

      if attributes.has_key?(:'datacenteruuid')
        self.datacenteruuid = attributes[:'datacenteruuid']
      end

      if attributes.has_key?(:'flavoruuid')
        self.flavoruuid = attributes[:'flavoruuid']
      end

      if attributes.has_key?(:'floating_ip')
        self.floating_ip = attributes[:'floating_ip']
      end

      if attributes.has_key?(:'imageuuid')
        self.imageuuid = attributes[:'imageuuid']
      end

      if attributes.has_key?(:'instance_uuid')
        self.instance_uuid = attributes[:'instance_uuid']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'vnfuuid')
        self.vnfuuid = attributes[:'vnfuuid']
      end

      if attributes.has_key?(:'vportcount')
        self.vportcount = attributes[:'vportcount']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          compute_hostname == o.compute_hostname &&
          customeruuid == o.customeruuid &&
          datacenteruuid == o.datacenteruuid &&
          flavoruuid == o.flavoruuid &&
          floating_ip == o.floating_ip &&
          imageuuid == o.imageuuid &&
          instance_uuid == o.instance_uuid &&
          status == o.status &&
          vnfuuid == o.vnfuuid &&
          vportcount == o.vportcount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [compute_hostname, customeruuid, datacenteruuid, flavoruuid, floating_ip, imageuuid, instance_uuid, status, vnfuuid, vportcount].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = TelstraTPN.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
