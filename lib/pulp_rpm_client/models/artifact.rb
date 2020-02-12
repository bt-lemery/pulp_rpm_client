=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module PulpRpmClient
  class Artifact
    attr_accessor :pulp_href

    # Timestamp of creation.
    attr_accessor :pulp_created

    # The stored file.
    attr_accessor :file

    # The size of the file in bytes.
    attr_accessor :size

    # The MD5 checksum of the file if available.
    attr_accessor :md5

    # The SHA-1 checksum of the file if available.
    attr_accessor :sha1

    # The SHA-224 checksum of the file if available.
    attr_accessor :sha224

    # The SHA-256 checksum of the file if available.
    attr_accessor :sha256

    # The SHA-384 checksum of the file if available.
    attr_accessor :sha384

    # The SHA-512 checksum of the file if available.
    attr_accessor :sha512

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'pulp_href' => :'pulp_href',
        :'pulp_created' => :'pulp_created',
        :'file' => :'file',
        :'size' => :'size',
        :'md5' => :'md5',
        :'sha1' => :'sha1',
        :'sha224' => :'sha224',
        :'sha256' => :'sha256',
        :'sha384' => :'sha384',
        :'sha512' => :'sha512'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'pulp_href' => :'String',
        :'pulp_created' => :'DateTime',
        :'file' => :'String',
        :'size' => :'Integer',
        :'md5' => :'String',
        :'sha1' => :'String',
        :'sha224' => :'String',
        :'sha256' => :'String',
        :'sha384' => :'String',
        :'sha512' => :'String'
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

      if attributes.has_key?(:'file')
        self.file = attributes[:'file']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'md5')
        self.md5 = attributes[:'md5']
      end

      if attributes.has_key?(:'sha1')
        self.sha1 = attributes[:'sha1']
      end

      if attributes.has_key?(:'sha224')
        self.sha224 = attributes[:'sha224']
      end

      if attributes.has_key?(:'sha256')
        self.sha256 = attributes[:'sha256']
      end

      if attributes.has_key?(:'sha384')
        self.sha384 = attributes[:'sha384']
      end

      if attributes.has_key?(:'sha512')
        self.sha512 = attributes[:'sha512']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@md5.nil? && @md5.to_s.length < 1
        invalid_properties.push('invalid value for "md5", the character length must be great than or equal to 1.')
      end

      if !@sha1.nil? && @sha1.to_s.length < 1
        invalid_properties.push('invalid value for "sha1", the character length must be great than or equal to 1.')
      end

      if !@sha224.nil? && @sha224.to_s.length < 1
        invalid_properties.push('invalid value for "sha224", the character length must be great than or equal to 1.')
      end

      if !@sha256.nil? && @sha256.to_s.length < 1
        invalid_properties.push('invalid value for "sha256", the character length must be great than or equal to 1.')
      end

      if !@sha384.nil? && @sha384.to_s.length < 1
        invalid_properties.push('invalid value for "sha384", the character length must be great than or equal to 1.')
      end

      if !@sha512.nil? && @sha512.to_s.length < 1
        invalid_properties.push('invalid value for "sha512", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@md5.nil? && @md5.to_s.length < 1
      return false if !@sha1.nil? && @sha1.to_s.length < 1
      return false if !@sha224.nil? && @sha224.to_s.length < 1
      return false if !@sha256.nil? && @sha256.to_s.length < 1
      return false if !@sha384.nil? && @sha384.to_s.length < 1
      return false if !@sha512.nil? && @sha512.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] md5 Value to be assigned
    def md5=(md5)
      if !md5.nil? && md5.to_s.length < 1
        fail ArgumentError, 'invalid value for "md5", the character length must be great than or equal to 1.'
      end

      @md5 = md5
    end

    # Custom attribute writer method with validation
    # @param [Object] sha1 Value to be assigned
    def sha1=(sha1)
      if !sha1.nil? && sha1.to_s.length < 1
        fail ArgumentError, 'invalid value for "sha1", the character length must be great than or equal to 1.'
      end

      @sha1 = sha1
    end

    # Custom attribute writer method with validation
    # @param [Object] sha224 Value to be assigned
    def sha224=(sha224)
      if !sha224.nil? && sha224.to_s.length < 1
        fail ArgumentError, 'invalid value for "sha224", the character length must be great than or equal to 1.'
      end

      @sha224 = sha224
    end

    # Custom attribute writer method with validation
    # @param [Object] sha256 Value to be assigned
    def sha256=(sha256)
      if !sha256.nil? && sha256.to_s.length < 1
        fail ArgumentError, 'invalid value for "sha256", the character length must be great than or equal to 1.'
      end

      @sha256 = sha256
    end

    # Custom attribute writer method with validation
    # @param [Object] sha384 Value to be assigned
    def sha384=(sha384)
      if !sha384.nil? && sha384.to_s.length < 1
        fail ArgumentError, 'invalid value for "sha384", the character length must be great than or equal to 1.'
      end

      @sha384 = sha384
    end

    # Custom attribute writer method with validation
    # @param [Object] sha512 Value to be assigned
    def sha512=(sha512)
      if !sha512.nil? && sha512.to_s.length < 1
        fail ArgumentError, 'invalid value for "sha512", the character length must be great than or equal to 1.'
      end

      @sha512 = sha512
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pulp_href == o.pulp_href &&
          pulp_created == o.pulp_created &&
          file == o.file &&
          size == o.size &&
          md5 == o.md5 &&
          sha1 == o.sha1 &&
          sha224 == o.sha224 &&
          sha256 == o.sha256 &&
          sha384 == o.sha384 &&
          sha512 == o.sha512
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [pulp_href, pulp_created, file, size, md5, sha1, sha224, sha256, sha384, sha512].hash
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
