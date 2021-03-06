=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.4.2
Contact: pnapi-support@team.telstra.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.1.2

=end

require 'date'

module TelstraTPN
  class Visitcard
    # UUID of the Visit Card
    attr_accessor :uuid

    attr_accessor :provided_services

    # Short name by which to describe the provider
    attr_accessor :name

    # Web site to redirect user to if they click on the provider in the Global Exchange
    attr_accessor :website

    attr_accessor :contact_name

    attr_accessor :contact_number

    attr_accessor :email

    attr_accessor :profile

    # Brief description of the services available from this provider
    attr_accessor :services_offered

    # Detailed description of the organisation
    attr_accessor :description

    # URL for an image to be displayed on Global Exchange for this provider
    attr_accessor :image

    attr_accessor :provider_category

    attr_accessor :provider_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'uuid' => :'uuid',
        :'provided_services' => :'provided_services',
        :'name' => :'name',
        :'website' => :'website',
        :'contact_name' => :'contact_name',
        :'contact_number' => :'contact_number',
        :'email' => :'email',
        :'profile' => :'profile',
        :'services_offered' => :'services_offered',
        :'description' => :'description',
        :'image' => :'image',
        :'provider_category' => :'provider_category',
        :'provider_type' => :'provider_type'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'uuid' => :'String',
        :'provided_services' => :'Array<String>',
        :'name' => :'String',
        :'website' => :'String',
        :'contact_name' => :'String',
        :'contact_number' => :'String',
        :'email' => :'String',
        :'profile' => :'String',
        :'services_offered' => :'String',
        :'description' => :'String',
        :'image' => :'String',
        :'provider_category' => :'String',
        :'provider_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.has_key?(:'provided_services')
        if (value = attributes[:'provided_services']).is_a?(Array)
          self.provided_services = value
        end
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.has_key?(:'contact_name')
        self.contact_name = attributes[:'contact_name']
      end

      if attributes.has_key?(:'contact_number')
        self.contact_number = attributes[:'contact_number']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'profile')
        self.profile = attributes[:'profile']
      end

      if attributes.has_key?(:'services_offered')
        self.services_offered = attributes[:'services_offered']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.has_key?(:'provider_category')
        self.provider_category = attributes[:'provider_category']
      end

      if attributes.has_key?(:'provider_type')
        self.provider_type = attributes[:'provider_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          uuid == o.uuid &&
          provided_services == o.provided_services &&
          name == o.name &&
          website == o.website &&
          contact_name == o.contact_name &&
          contact_number == o.contact_number &&
          email == o.email &&
          profile == o.profile &&
          services_offered == o.services_offered &&
          description == o.description &&
          image == o.image &&
          provider_category == o.provider_category &&
          provider_type == o.provider_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [uuid, provided_services, name, website, contact_name, contact_number, email, profile, services_offered, description, image, provider_category, provider_type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        value.compact.map { |v| _to_hash(v) }
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
