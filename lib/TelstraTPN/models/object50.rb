=begin
#Telstra Programmable Network API

#Telstra Programmable Network is a self-provisioning platform that allows its users to create on-demand connectivity services between multiple end-points and add various network functions to those services. Programmable Network enables to connectivity to a global ecosystem of networking services as well as public and private cloud services. Once you are connected to the platform on one or more POPs (points of presence), you can start creating those services based on the use case that you want to accomplish. The Programmable Network API is available to all customers who have registered to use the Programmable Network. To register, please contact your account representative.

OpenAPI spec version: 2.1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module TelstraTPN

  class Object50
    # 
    attr_accessor :brief_description

    # 
    attr_accessor :buyers

    # 
    attr_accessor :classifications

    # 
    attr_accessor :comments

    # 
    attr_accessor :create_at

    # 
    attr_accessor :creator

    # 
    attr_accessor :description

    # 
    attr_accessor :eos

    # 
    attr_accessor :flavors

    # 
    attr_accessor :flavors_price

    # 
    attr_accessor :glance_comments

    attr_accessor :glance_image

    # 
    attr_accessor :glance_name

    # 
    attr_accessor :glance_properties

    # 
    attr_accessor :id

    # 
    attr_accessor :image_format

    # 
    attr_accessor :license_required

    # 
    attr_accessor :logo

    # 
    attr_accessor :max_ports

    # 
    attr_accessor :md5

    # 
    attr_accessor :min_ports

    # 
    attr_accessor :name

    # 
    attr_accessor :os_version

    # 
    attr_accessor :owner

    attr_accessor :product

    # 
    attr_accessor :publish_date

    # 
    attr_accessor :restrict_vnc_console

    # 
    attr_accessor :status

    # 
    attr_accessor :support_hot_plug

    # 
    attr_accessor :tags

    # 
    attr_accessor :upload_at

    # 
    attr_accessor :vendor_name

    # 
    attr_accessor :zero_day_config_spec


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'brief_description' => :'brief_description',
        :'buyers' => :'buyers',
        :'classifications' => :'classifications',
        :'comments' => :'comments',
        :'create_at' => :'create_at',
        :'creator' => :'creator',
        :'description' => :'description',
        :'eos' => :'eos',
        :'flavors' => :'flavors',
        :'flavors_price' => :'flavors_price',
        :'glance_comments' => :'glance_comments',
        :'glance_image' => :'glance_image',
        :'glance_name' => :'glance_name',
        :'glance_properties' => :'glance_properties',
        :'id' => :'id',
        :'image_format' => :'image_format',
        :'license_required' => :'license_required',
        :'logo' => :'logo',
        :'max_ports' => :'max_ports',
        :'md5' => :'md5',
        :'min_ports' => :'min_ports',
        :'name' => :'name',
        :'os_version' => :'os_version',
        :'owner' => :'owner',
        :'product' => :'product',
        :'publish_date' => :'publish_date',
        :'restrict_vnc_console' => :'restrict_vnc_console',
        :'status' => :'status',
        :'support_hot_plug' => :'support_hot_plug',
        :'tags' => :'tags',
        :'upload_at' => :'upload_at',
        :'vendor_name' => :'vendor_name',
        :'zero_day_config_spec' => :'zero_day_config_spec'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'brief_description' => :'String',
        :'buyers' => :'String',
        :'classifications' => :'Array<Classification>',
        :'comments' => :'String',
        :'create_at' => :'Integer',
        :'creator' => :'String',
        :'description' => :'String',
        :'eos' => :'String',
        :'flavors' => :'Array<Flavor>',
        :'flavors_price' => :'String',
        :'glance_comments' => :'String',
        :'glance_image' => :'GlanceImage',
        :'glance_name' => :'String',
        :'glance_properties' => :'String',
        :'id' => :'Integer',
        :'image_format' => :'String',
        :'license_required' => :'BOOLEAN',
        :'logo' => :'String',
        :'max_ports' => :'Integer',
        :'md5' => :'String',
        :'min_ports' => :'Integer',
        :'name' => :'String',
        :'os_version' => :'String',
        :'owner' => :'String',
        :'product' => :'Product',
        :'publish_date' => :'String',
        :'restrict_vnc_console' => :'BOOLEAN',
        :'status' => :'String',
        :'support_hot_plug' => :'BOOLEAN',
        :'tags' => :'Array<VnfTag>',
        :'upload_at' => :'Integer',
        :'vendor_name' => :'String',
        :'zero_day_config_spec' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'brief_description')
        self.brief_description = attributes[:'brief_description']
      end

      if attributes.has_key?(:'buyers')
        self.buyers = attributes[:'buyers']
      end

      if attributes.has_key?(:'classifications')
        if (value = attributes[:'classifications']).is_a?(Array)
          self.classifications = value
        end
      end

      if attributes.has_key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.has_key?(:'create_at')
        self.create_at = attributes[:'create_at']
      end

      if attributes.has_key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'eos')
        self.eos = attributes[:'eos']
      end

      if attributes.has_key?(:'flavors')
        if (value = attributes[:'flavors']).is_a?(Array)
          self.flavors = value
        end
      end

      if attributes.has_key?(:'flavors_price')
        self.flavors_price = attributes[:'flavors_price']
      end

      if attributes.has_key?(:'glance_comments')
        self.glance_comments = attributes[:'glance_comments']
      end

      if attributes.has_key?(:'glance_image')
        self.glance_image = attributes[:'glance_image']
      end

      if attributes.has_key?(:'glance_name')
        self.glance_name = attributes[:'glance_name']
      end

      if attributes.has_key?(:'glance_properties')
        self.glance_properties = attributes[:'glance_properties']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'image_format')
        self.image_format = attributes[:'image_format']
      end

      if attributes.has_key?(:'license_required')
        self.license_required = attributes[:'license_required']
      end

      if attributes.has_key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.has_key?(:'max_ports')
        self.max_ports = attributes[:'max_ports']
      end

      if attributes.has_key?(:'md5')
        self.md5 = attributes[:'md5']
      end

      if attributes.has_key?(:'min_ports')
        self.min_ports = attributes[:'min_ports']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'os_version')
        self.os_version = attributes[:'os_version']
      end

      if attributes.has_key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'publish_date')
        self.publish_date = attributes[:'publish_date']
      end

      if attributes.has_key?(:'restrict_vnc_console')
        self.restrict_vnc_console = attributes[:'restrict_vnc_console']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'support_hot_plug')
        self.support_hot_plug = attributes[:'support_hot_plug']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'upload_at')
        self.upload_at = attributes[:'upload_at']
      end

      if attributes.has_key?(:'vendor_name')
        self.vendor_name = attributes[:'vendor_name']
      end

      if attributes.has_key?(:'zero_day_config_spec')
        self.zero_day_config_spec = attributes[:'zero_day_config_spec']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
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
          brief_description == o.brief_description &&
          buyers == o.buyers &&
          classifications == o.classifications &&
          comments == o.comments &&
          create_at == o.create_at &&
          creator == o.creator &&
          description == o.description &&
          eos == o.eos &&
          flavors == o.flavors &&
          flavors_price == o.flavors_price &&
          glance_comments == o.glance_comments &&
          glance_image == o.glance_image &&
          glance_name == o.glance_name &&
          glance_properties == o.glance_properties &&
          id == o.id &&
          image_format == o.image_format &&
          license_required == o.license_required &&
          logo == o.logo &&
          max_ports == o.max_ports &&
          md5 == o.md5 &&
          min_ports == o.min_ports &&
          name == o.name &&
          os_version == o.os_version &&
          owner == o.owner &&
          product == o.product &&
          publish_date == o.publish_date &&
          restrict_vnc_console == o.restrict_vnc_console &&
          status == o.status &&
          support_hot_plug == o.support_hot_plug &&
          tags == o.tags &&
          upload_at == o.upload_at &&
          vendor_name == o.vendor_name &&
          zero_day_config_spec == o.zero_day_config_spec
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [brief_description, buyers, classifications, comments, create_at, creator, description, eos, flavors, flavors_price, glance_comments, glance_image, glance_name, glance_properties, id, image_format, license_required, logo, max_ports, md5, min_ports, name, os_version, owner, product, publish_date, restrict_vnc_console, status, support_hot_plug, tags, upload_at, vendor_name, zero_day_config_spec].hash
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