=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.3.3
Contact: pnapi-support@team.telstra.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module TelstraTPN

  class InlineResponse2008Params
    attr_accessor :bandwidth

    attr_accessor :billing_id

    attr_accessor :connection

    attr_accessor :contract_end_time

    attr_accessor :contract_start_time

    attr_accessor :contract_status

    attr_accessor :contractid

    attr_accessor :deletedtimestamp

    attr_accessor :description

    attr_accessor :duration

    attr_accessor :latency

    attr_accessor :linkid

    attr_accessor :price

    attr_accessor :renewal_option

    attr_accessor :tag

    attr_accessor :type

    attr_accessor :version


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bandwidth' => :'bandwidth',
        :'billing_id' => :'billing-id',
        :'connection' => :'connection',
        :'contract_end_time' => :'contract-end-time',
        :'contract_start_time' => :'contract-start-time',
        :'contract_status' => :'contractStatus',
        :'contractid' => :'contractid',
        :'deletedtimestamp' => :'deletedtimestamp',
        :'description' => :'description',
        :'duration' => :'duration',
        :'latency' => :'latency',
        :'linkid' => :'linkid',
        :'price' => :'price',
        :'renewal_option' => :'renewal-option',
        :'tag' => :'tag',
        :'type' => :'type',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'bandwidth' => :'BandwidthKbs',
        :'billing_id' => :'String',
        :'connection' => :'Connections',
        :'contract_end_time' => :'ContractEndTime',
        :'contract_start_time' => :'ContractStartTime',
        :'contract_status' => :'ContractStatus',
        :'contractid' => :'Contractid',
        :'deletedtimestamp' => :'Deletedtimestamp',
        :'description' => :'String',
        :'duration' => :'DurationMins',
        :'latency' => :'Latency',
        :'linkid' => :'Linkid',
        :'price' => :'Price',
        :'renewal_option' => :'RenewalOption',
        :'tag' => :'String',
        :'type' => :'String',
        :'version' => :'Version'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'bandwidth')
        self.bandwidth = attributes[:'bandwidth']
      end

      if attributes.has_key?(:'billing-id')
        self.billing_id = attributes[:'billing-id']
      end

      if attributes.has_key?(:'connection')
        self.connection = attributes[:'connection']
      end

      if attributes.has_key?(:'contract-end-time')
        self.contract_end_time = attributes[:'contract-end-time']
      end

      if attributes.has_key?(:'contract-start-time')
        self.contract_start_time = attributes[:'contract-start-time']
      end

      if attributes.has_key?(:'contractStatus')
        self.contract_status = attributes[:'contractStatus']
      end

      if attributes.has_key?(:'contractid')
        self.contractid = attributes[:'contractid']
      end

      if attributes.has_key?(:'deletedtimestamp')
        self.deletedtimestamp = attributes[:'deletedtimestamp']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.has_key?(:'latency')
        self.latency = attributes[:'latency']
      end

      if attributes.has_key?(:'linkid')
        self.linkid = attributes[:'linkid']
      end

      if attributes.has_key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.has_key?(:'renewal-option')
        self.renewal_option = attributes[:'renewal-option']
      end

      if attributes.has_key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
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
          bandwidth == o.bandwidth &&
          billing_id == o.billing_id &&
          connection == o.connection &&
          contract_end_time == o.contract_end_time &&
          contract_start_time == o.contract_start_time &&
          contract_status == o.contract_status &&
          contractid == o.contractid &&
          deletedtimestamp == o.deletedtimestamp &&
          description == o.description &&
          duration == o.duration &&
          latency == o.latency &&
          linkid == o.linkid &&
          price == o.price &&
          renewal_option == o.renewal_option &&
          tag == o.tag &&
          type == o.type &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [bandwidth, billing_id, connection, contract_end_time, contract_start_time, contract_status, contractid, deletedtimestamp, description, duration, latency, linkid, price, renewal_option, tag, type, version].hash
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
