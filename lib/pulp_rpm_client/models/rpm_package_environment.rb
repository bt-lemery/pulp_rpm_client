=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module PulpRpmClient
  class RpmPackageEnvironment
    attr_accessor :pulp_href

    # Timestamp of creation.
    attr_accessor :pulp_created

    # Environment id.
    attr_accessor :id

    # Environment name.
    attr_accessor :name

    # Environment description.
    attr_accessor :description

    # Environment display order.
    attr_accessor :display_order

    # Environment group list.
    attr_accessor :group_ids

    # Environment option ids
    attr_accessor :option_ids

    # Environment description by language.
    attr_accessor :desc_by_lang

    # Environment name by language.
    attr_accessor :name_by_lang

    # Environment digest.
    attr_accessor :digest

    # Groups related to this Environment.
    attr_accessor :packagegroups

    # Groups optionally related to this Environment.
    attr_accessor :optionalgroups

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'pulp_href' => :'pulp_href',
        :'pulp_created' => :'pulp_created',
        :'id' => :'id',
        :'name' => :'name',
        :'description' => :'description',
        :'display_order' => :'display_order',
        :'group_ids' => :'group_ids',
        :'option_ids' => :'option_ids',
        :'desc_by_lang' => :'desc_by_lang',
        :'name_by_lang' => :'name_by_lang',
        :'digest' => :'digest',
        :'packagegroups' => :'packagegroups',
        :'optionalgroups' => :'optionalgroups'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'pulp_href' => :'String',
        :'pulp_created' => :'DateTime',
        :'id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'display_order' => :'Integer',
        :'group_ids' => :'Object',
        :'option_ids' => :'Object',
        :'desc_by_lang' => :'Object',
        :'name_by_lang' => :'Object',
        :'digest' => :'String',
        :'packagegroups' => :'Array<String>',
        :'optionalgroups' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'pulp_href')
        self.pulp_href = attributes[:'pulp_href']
      end

      if attributes.has_key?(:'pulp_created')
        self.pulp_created = attributes[:'pulp_created']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'display_order')
        self.display_order = attributes[:'display_order']
      end

      if attributes.has_key?(:'group_ids')
        self.group_ids = attributes[:'group_ids']
      end

      if attributes.has_key?(:'option_ids')
        self.option_ids = attributes[:'option_ids']
      end

      if attributes.has_key?(:'desc_by_lang')
        self.desc_by_lang = attributes[:'desc_by_lang']
      end

      if attributes.has_key?(:'name_by_lang')
        self.name_by_lang = attributes[:'name_by_lang']
      end

      if attributes.has_key?(:'digest')
        self.digest = attributes[:'digest']
      end

      if attributes.has_key?(:'packagegroups')
        if (value = attributes[:'packagegroups']).is_a?(Array)
          self.packagegroups = value
        end
      end

      if attributes.has_key?(:'optionalgroups')
        if (value = attributes[:'optionalgroups']).is_a?(Array)
          self.optionalgroups = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @display_order.nil?
        invalid_properties.push('invalid value for "display_order", display_order cannot be nil.')
      end

      if @group_ids.nil?
        invalid_properties.push('invalid value for "group_ids", group_ids cannot be nil.')
      end

      if @option_ids.nil?
        invalid_properties.push('invalid value for "option_ids", option_ids cannot be nil.')
      end

      if @desc_by_lang.nil?
        invalid_properties.push('invalid value for "desc_by_lang", desc_by_lang cannot be nil.')
      end

      if @name_by_lang.nil?
        invalid_properties.push('invalid value for "name_by_lang", name_by_lang cannot be nil.')
      end

      if @digest.nil?
        invalid_properties.push('invalid value for "digest", digest cannot be nil.')
      end

      if @digest.to_s.length < 1
        invalid_properties.push('invalid value for "digest", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length < 1
      return false if @name.nil?
      return false if @description.nil?
      return false if @display_order.nil?
      return false if @group_ids.nil?
      return false if @option_ids.nil?
      return false if @desc_by_lang.nil?
      return false if @name_by_lang.nil?
      return false if @digest.nil?
      return false if @digest.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] digest Value to be assigned
    def digest=(digest)
      if digest.nil?
        fail ArgumentError, 'digest cannot be nil'
      end

      if digest.to_s.length < 1
        fail ArgumentError, 'invalid value for "digest", the character length must be great than or equal to 1.'
      end

      @digest = digest
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pulp_href == o.pulp_href &&
          pulp_created == o.pulp_created &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          display_order == o.display_order &&
          group_ids == o.group_ids &&
          option_ids == o.option_ids &&
          desc_by_lang == o.desc_by_lang &&
          name_by_lang == o.name_by_lang &&
          digest == o.digest &&
          packagegroups == o.packagegroups &&
          optionalgroups == o.optionalgroups
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [pulp_href, pulp_created, id, name, description, display_order, group_ids, option_ids, desc_by_lang, name_by_lang, digest, packagegroups, optionalgroups].hash
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
        temp_model = PulpRpmClient.const_get(type).new
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
