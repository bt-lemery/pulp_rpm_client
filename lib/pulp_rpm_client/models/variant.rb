=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module SwaggerClient
  class Variant
    # Variant id.
    attr_accessor :variant_id

    # Variant uid.
    attr_accessor :uid

    # Variant name.
    attr_accessor :name

    # Variant type.
    attr_accessor :type

    # Relative path to directory with binary RPMs.
    attr_accessor :packages

    # Relative path to directory with source RPMs.
    attr_accessor :source_packages

    # Relative path to YUM repository with source RPMs.
    attr_accessor :source_repository

    # Relative path to directory with debug RPMs.
    attr_accessor :debug_packages

    # Relative path to YUM repository with debug RPMs.
    attr_accessor :debug_repository

    # Relative path to a pem file that identifies a product.
    attr_accessor :identity

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'variant_id' => :'variant_id',
        :'uid' => :'uid',
        :'name' => :'name',
        :'type' => :'type',
        :'packages' => :'packages',
        :'source_packages' => :'source_packages',
        :'source_repository' => :'source_repository',
        :'debug_packages' => :'debug_packages',
        :'debug_repository' => :'debug_repository',
        :'identity' => :'identity'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'variant_id' => :'String',
        :'uid' => :'String',
        :'name' => :'String',
        :'type' => :'String',
        :'packages' => :'String',
        :'source_packages' => :'String',
        :'source_repository' => :'String',
        :'debug_packages' => :'String',
        :'debug_repository' => :'String',
        :'identity' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'variant_id')
        self.variant_id = attributes[:'variant_id']
      end

      if attributes.has_key?(:'uid')
        self.uid = attributes[:'uid']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'packages')
        self.packages = attributes[:'packages']
      end

      if attributes.has_key?(:'source_packages')
        self.source_packages = attributes[:'source_packages']
      end

      if attributes.has_key?(:'source_repository')
        self.source_repository = attributes[:'source_repository']
      end

      if attributes.has_key?(:'debug_packages')
        self.debug_packages = attributes[:'debug_packages']
      end

      if attributes.has_key?(:'debug_repository')
        self.debug_repository = attributes[:'debug_repository']
      end

      if attributes.has_key?(:'identity')
        self.identity = attributes[:'identity']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @variant_id.nil?
        invalid_properties.push('invalid value for "variant_id", variant_id cannot be nil.')
      end

      if @variant_id.to_s.length < 1
        invalid_properties.push('invalid value for "variant_id", the character length must be great than or equal to 1.')
      end

      if @uid.nil?
        invalid_properties.push('invalid value for "uid", uid cannot be nil.')
      end

      if @uid.to_s.length < 1
        invalid_properties.push('invalid value for "uid", the character length must be great than or equal to 1.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @type.to_s.length < 1
        invalid_properties.push('invalid value for "type", the character length must be great than or equal to 1.')
      end

      if @packages.nil?
        invalid_properties.push('invalid value for "packages", packages cannot be nil.')
      end

      if @packages.to_s.length < 1
        invalid_properties.push('invalid value for "packages", the character length must be great than or equal to 1.')
      end

      if @source_packages.nil?
        invalid_properties.push('invalid value for "source_packages", source_packages cannot be nil.')
      end

      if @source_packages.to_s.length < 1
        invalid_properties.push('invalid value for "source_packages", the character length must be great than or equal to 1.')
      end

      if @source_repository.nil?
        invalid_properties.push('invalid value for "source_repository", source_repository cannot be nil.')
      end

      if @source_repository.to_s.length < 1
        invalid_properties.push('invalid value for "source_repository", the character length must be great than or equal to 1.')
      end

      if @debug_packages.nil?
        invalid_properties.push('invalid value for "debug_packages", debug_packages cannot be nil.')
      end

      if @debug_packages.to_s.length < 1
        invalid_properties.push('invalid value for "debug_packages", the character length must be great than or equal to 1.')
      end

      if @debug_repository.nil?
        invalid_properties.push('invalid value for "debug_repository", debug_repository cannot be nil.')
      end

      if @debug_repository.to_s.length < 1
        invalid_properties.push('invalid value for "debug_repository", the character length must be great than or equal to 1.')
      end

      if @identity.nil?
        invalid_properties.push('invalid value for "identity", identity cannot be nil.')
      end

      if @identity.to_s.length < 1
        invalid_properties.push('invalid value for "identity", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @variant_id.nil?
      return false if @variant_id.to_s.length < 1
      return false if @uid.nil?
      return false if @uid.to_s.length < 1
      return false if @name.nil?
      return false if @name.to_s.length < 1
      return false if @type.nil?
      return false if @type.to_s.length < 1
      return false if @packages.nil?
      return false if @packages.to_s.length < 1
      return false if @source_packages.nil?
      return false if @source_packages.to_s.length < 1
      return false if @source_repository.nil?
      return false if @source_repository.to_s.length < 1
      return false if @debug_packages.nil?
      return false if @debug_packages.to_s.length < 1
      return false if @debug_repository.nil?
      return false if @debug_repository.to_s.length < 1
      return false if @identity.nil?
      return false if @identity.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] variant_id Value to be assigned
    def variant_id=(variant_id)
      if variant_id.nil?
        fail ArgumentError, 'variant_id cannot be nil'
      end

      if variant_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "variant_id", the character length must be great than or equal to 1.'
      end

      @variant_id = variant_id
    end

    # Custom attribute writer method with validation
    # @param [Object] uid Value to be assigned
    def uid=(uid)
      if uid.nil?
        fail ArgumentError, 'uid cannot be nil'
      end

      if uid.to_s.length < 1
        fail ArgumentError, 'invalid value for "uid", the character length must be great than or equal to 1.'
      end

      @uid = uid
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] type Value to be assigned
    def type=(type)
      if type.nil?
        fail ArgumentError, 'type cannot be nil'
      end

      if type.to_s.length < 1
        fail ArgumentError, 'invalid value for "type", the character length must be great than or equal to 1.'
      end

      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] packages Value to be assigned
    def packages=(packages)
      if packages.nil?
        fail ArgumentError, 'packages cannot be nil'
      end

      if packages.to_s.length < 1
        fail ArgumentError, 'invalid value for "packages", the character length must be great than or equal to 1.'
      end

      @packages = packages
    end

    # Custom attribute writer method with validation
    # @param [Object] source_packages Value to be assigned
    def source_packages=(source_packages)
      if source_packages.nil?
        fail ArgumentError, 'source_packages cannot be nil'
      end

      if source_packages.to_s.length < 1
        fail ArgumentError, 'invalid value for "source_packages", the character length must be great than or equal to 1.'
      end

      @source_packages = source_packages
    end

    # Custom attribute writer method with validation
    # @param [Object] source_repository Value to be assigned
    def source_repository=(source_repository)
      if source_repository.nil?
        fail ArgumentError, 'source_repository cannot be nil'
      end

      if source_repository.to_s.length < 1
        fail ArgumentError, 'invalid value for "source_repository", the character length must be great than or equal to 1.'
      end

      @source_repository = source_repository
    end

    # Custom attribute writer method with validation
    # @param [Object] debug_packages Value to be assigned
    def debug_packages=(debug_packages)
      if debug_packages.nil?
        fail ArgumentError, 'debug_packages cannot be nil'
      end

      if debug_packages.to_s.length < 1
        fail ArgumentError, 'invalid value for "debug_packages", the character length must be great than or equal to 1.'
      end

      @debug_packages = debug_packages
    end

    # Custom attribute writer method with validation
    # @param [Object] debug_repository Value to be assigned
    def debug_repository=(debug_repository)
      if debug_repository.nil?
        fail ArgumentError, 'debug_repository cannot be nil'
      end

      if debug_repository.to_s.length < 1
        fail ArgumentError, 'invalid value for "debug_repository", the character length must be great than or equal to 1.'
      end

      @debug_repository = debug_repository
    end

    # Custom attribute writer method with validation
    # @param [Object] identity Value to be assigned
    def identity=(identity)
      if identity.nil?
        fail ArgumentError, 'identity cannot be nil'
      end

      if identity.to_s.length < 1
        fail ArgumentError, 'invalid value for "identity", the character length must be great than or equal to 1.'
      end

      @identity = identity
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          variant_id == o.variant_id &&
          uid == o.uid &&
          name == o.name &&
          type == o.type &&
          packages == o.packages &&
          source_packages == o.source_packages &&
          source_repository == o.source_repository &&
          debug_packages == o.debug_packages &&
          debug_repository == o.debug_repository &&
          identity == o.identity
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [variant_id, uid, name, type, packages, source_packages, source_repository, debug_packages, debug_repository, identity].hash
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
        temp_model = SwaggerClient.const_get(type).new
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
