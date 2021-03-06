=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module PulpRpmClient
  class RpmPackage
    attr_accessor :pulp_href

    # Timestamp of creation.
    attr_accessor :pulp_created

    # Artifact file representing the physical content
    attr_accessor :artifact

    # Name of the package
    attr_accessor :name

    # The package's epoch
    attr_accessor :epoch

    # The version of the package. For example, '2.8.0'
    attr_accessor :version

    # The release of a particular version of the package. e.g. '1.el7' or '3.f24'
    attr_accessor :release

    # The target architecture for a package.For example, 'x86_64', 'i686', or 'noarch'
    attr_accessor :arch

    # Checksum of the package file
    attr_accessor :pkg_id

    # Type of checksum, e.g. 'sha256', 'md5'
    attr_accessor :checksum_type

    # Short description of the packaged software
    attr_accessor :summary

    # In-depth description of the packaged software
    attr_accessor :description

    # URL with more information about the packaged software
    attr_accessor :url

    # Changelogs that package contains
    attr_accessor :changelogs

    # Files that package contains
    attr_accessor :files

    # Capabilities the package requires
    attr_accessor :requires

    # Capabilities the package provides
    attr_accessor :provides

    # Capabilities the package conflicts
    attr_accessor :conflicts

    # Capabilities the package obsoletes
    attr_accessor :obsoletes

    # Capabilities the package suggests
    attr_accessor :suggests

    # Capabilities the package enhances
    attr_accessor :enhances

    # Capabilities the package recommends
    attr_accessor :recommends

    # Capabilities the package supplements
    attr_accessor :supplements

    # Base location of this package
    attr_accessor :location_base

    # Relative location of package to the repodata
    attr_accessor :location_href

    # Hostname of the system that built the package
    attr_accessor :rpm_buildhost

    # RPM group (See: http://fedoraproject.org/wiki/RPMGroups)
    attr_accessor :rpm_group

    # License term applicable to the package software (GPLv2, etc.)
    attr_accessor :rpm_license

    # Person or persons responsible for creating the package
    attr_accessor :rpm_packager

    # Name of the source package (srpm) the package was built from
    attr_accessor :rpm_sourcerpm

    # Name of the organization that produced the package
    attr_accessor :rpm_vendor

    # First byte of the header
    attr_accessor :rpm_header_start

    # Last byte of the header
    attr_accessor :rpm_header_end

    # Flag to identify if the package is modular
    attr_accessor :is_modular

    # Size, in bytes, of the archive portion of the original package file
    attr_accessor :size_archive

    # Total size, in bytes, of every file installed by this package
    attr_accessor :size_installed

    # Size, in bytes, of the package
    attr_accessor :size_package

    # Time the package was built in seconds since the epoch
    attr_accessor :time_build

    # The 'file' time attribute in the primary XML - file mtime in seconds since the epoch.
    attr_accessor :time_file

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'pulp_href' => :'pulp_href',
        :'pulp_created' => :'pulp_created',
        :'artifact' => :'artifact',
        :'name' => :'name',
        :'epoch' => :'epoch',
        :'version' => :'version',
        :'release' => :'release',
        :'arch' => :'arch',
        :'pkg_id' => :'pkgId',
        :'checksum_type' => :'checksum_type',
        :'summary' => :'summary',
        :'description' => :'description',
        :'url' => :'url',
        :'changelogs' => :'changelogs',
        :'files' => :'files',
        :'requires' => :'requires',
        :'provides' => :'provides',
        :'conflicts' => :'conflicts',
        :'obsoletes' => :'obsoletes',
        :'suggests' => :'suggests',
        :'enhances' => :'enhances',
        :'recommends' => :'recommends',
        :'supplements' => :'supplements',
        :'location_base' => :'location_base',
        :'location_href' => :'location_href',
        :'rpm_buildhost' => :'rpm_buildhost',
        :'rpm_group' => :'rpm_group',
        :'rpm_license' => :'rpm_license',
        :'rpm_packager' => :'rpm_packager',
        :'rpm_sourcerpm' => :'rpm_sourcerpm',
        :'rpm_vendor' => :'rpm_vendor',
        :'rpm_header_start' => :'rpm_header_start',
        :'rpm_header_end' => :'rpm_header_end',
        :'is_modular' => :'is_modular',
        :'size_archive' => :'size_archive',
        :'size_installed' => :'size_installed',
        :'size_package' => :'size_package',
        :'time_build' => :'time_build',
        :'time_file' => :'time_file'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'pulp_href' => :'String',
        :'pulp_created' => :'DateTime',
        :'artifact' => :'String',
        :'name' => :'String',
        :'epoch' => :'String',
        :'version' => :'String',
        :'release' => :'String',
        :'arch' => :'String',
        :'pkg_id' => :'String',
        :'checksum_type' => :'String',
        :'summary' => :'String',
        :'description' => :'String',
        :'url' => :'String',
        :'changelogs' => :'Object',
        :'files' => :'Object',
        :'requires' => :'Object',
        :'provides' => :'Object',
        :'conflicts' => :'Object',
        :'obsoletes' => :'Object',
        :'suggests' => :'Object',
        :'enhances' => :'Object',
        :'recommends' => :'Object',
        :'supplements' => :'Object',
        :'location_base' => :'String',
        :'location_href' => :'String',
        :'rpm_buildhost' => :'String',
        :'rpm_group' => :'String',
        :'rpm_license' => :'String',
        :'rpm_packager' => :'String',
        :'rpm_sourcerpm' => :'String',
        :'rpm_vendor' => :'String',
        :'rpm_header_start' => :'Integer',
        :'rpm_header_end' => :'Integer',
        :'is_modular' => :'BOOLEAN',
        :'size_archive' => :'Integer',
        :'size_installed' => :'Integer',
        :'size_package' => :'Integer',
        :'time_build' => :'Integer',
        :'time_file' => :'Integer'
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

      if attributes.has_key?(:'artifact')
        self.artifact = attributes[:'artifact']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'epoch')
        self.epoch = attributes[:'epoch']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'release')
        self.release = attributes[:'release']
      end

      if attributes.has_key?(:'arch')
        self.arch = attributes[:'arch']
      end

      if attributes.has_key?(:'pkgId')
        self.pkg_id = attributes[:'pkgId']
      end

      if attributes.has_key?(:'checksum_type')
        self.checksum_type = attributes[:'checksum_type']
      end

      if attributes.has_key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'changelogs')
        self.changelogs = attributes[:'changelogs']
      end

      if attributes.has_key?(:'files')
        self.files = attributes[:'files']
      end

      if attributes.has_key?(:'requires')
        self.requires = attributes[:'requires']
      end

      if attributes.has_key?(:'provides')
        self.provides = attributes[:'provides']
      end

      if attributes.has_key?(:'conflicts')
        self.conflicts = attributes[:'conflicts']
      end

      if attributes.has_key?(:'obsoletes')
        self.obsoletes = attributes[:'obsoletes']
      end

      if attributes.has_key?(:'suggests')
        self.suggests = attributes[:'suggests']
      end

      if attributes.has_key?(:'enhances')
        self.enhances = attributes[:'enhances']
      end

      if attributes.has_key?(:'recommends')
        self.recommends = attributes[:'recommends']
      end

      if attributes.has_key?(:'supplements')
        self.supplements = attributes[:'supplements']
      end

      if attributes.has_key?(:'location_base')
        self.location_base = attributes[:'location_base']
      end

      if attributes.has_key?(:'location_href')
        self.location_href = attributes[:'location_href']
      end

      if attributes.has_key?(:'rpm_buildhost')
        self.rpm_buildhost = attributes[:'rpm_buildhost']
      end

      if attributes.has_key?(:'rpm_group')
        self.rpm_group = attributes[:'rpm_group']
      end

      if attributes.has_key?(:'rpm_license')
        self.rpm_license = attributes[:'rpm_license']
      end

      if attributes.has_key?(:'rpm_packager')
        self.rpm_packager = attributes[:'rpm_packager']
      end

      if attributes.has_key?(:'rpm_sourcerpm')
        self.rpm_sourcerpm = attributes[:'rpm_sourcerpm']
      end

      if attributes.has_key?(:'rpm_vendor')
        self.rpm_vendor = attributes[:'rpm_vendor']
      end

      if attributes.has_key?(:'rpm_header_start')
        self.rpm_header_start = attributes[:'rpm_header_start']
      end

      if attributes.has_key?(:'rpm_header_end')
        self.rpm_header_end = attributes[:'rpm_header_end']
      end

      if attributes.has_key?(:'is_modular')
        self.is_modular = attributes[:'is_modular']
      end

      if attributes.has_key?(:'size_archive')
        self.size_archive = attributes[:'size_archive']
      end

      if attributes.has_key?(:'size_installed')
        self.size_installed = attributes[:'size_installed']
      end

      if attributes.has_key?(:'size_package')
        self.size_package = attributes[:'size_package']
      end

      if attributes.has_key?(:'time_build')
        self.time_build = attributes[:'time_build']
      end

      if attributes.has_key?(:'time_file')
        self.time_file = attributes[:'time_file']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if !@version.nil? && @version.to_s.length < 1
        invalid_properties.push('invalid value for "version", the character length must be great than or equal to 1.')
      end

      if !@release.nil? && @release.to_s.length < 1
        invalid_properties.push('invalid value for "release", the character length must be great than or equal to 1.')
      end

      if !@arch.nil? && @arch.to_s.length < 1
        invalid_properties.push('invalid value for "arch", the character length must be great than or equal to 1.')
      end

      if !@pkg_id.nil? && @pkg_id.to_s.length < 1
        invalid_properties.push('invalid value for "pkg_id", the character length must be great than or equal to 1.')
      end

      if !@checksum_type.nil? && @checksum_type.to_s.length < 1
        invalid_properties.push('invalid value for "checksum_type", the character length must be great than or equal to 1.')
      end

      if !@location_href.nil? && @location_href.to_s.length < 1
        invalid_properties.push('invalid value for "location_href", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@version.nil? && @version.to_s.length < 1
      return false if !@release.nil? && @release.to_s.length < 1
      return false if !@arch.nil? && @arch.to_s.length < 1
      return false if !@pkg_id.nil? && @pkg_id.to_s.length < 1
      return false if !@checksum_type.nil? && @checksum_type.to_s.length < 1
      return false if !@location_href.nil? && @location_href.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] version Value to be assigned
    def version=(version)
      if !version.nil? && version.to_s.length < 1
        fail ArgumentError, 'invalid value for "version", the character length must be great than or equal to 1.'
      end

      @version = version
    end

    # Custom attribute writer method with validation
    # @param [Object] release Value to be assigned
    def release=(release)
      if !release.nil? && release.to_s.length < 1
        fail ArgumentError, 'invalid value for "release", the character length must be great than or equal to 1.'
      end

      @release = release
    end

    # Custom attribute writer method with validation
    # @param [Object] arch Value to be assigned
    def arch=(arch)
      if !arch.nil? && arch.to_s.length < 1
        fail ArgumentError, 'invalid value for "arch", the character length must be great than or equal to 1.'
      end

      @arch = arch
    end

    # Custom attribute writer method with validation
    # @param [Object] pkg_id Value to be assigned
    def pkg_id=(pkg_id)
      if !pkg_id.nil? && pkg_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "pkg_id", the character length must be great than or equal to 1.'
      end

      @pkg_id = pkg_id
    end

    # Custom attribute writer method with validation
    # @param [Object] checksum_type Value to be assigned
    def checksum_type=(checksum_type)
      if !checksum_type.nil? && checksum_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "checksum_type", the character length must be great than or equal to 1.'
      end

      @checksum_type = checksum_type
    end

    # Custom attribute writer method with validation
    # @param [Object] location_href Value to be assigned
    def location_href=(location_href)
      if !location_href.nil? && location_href.to_s.length < 1
        fail ArgumentError, 'invalid value for "location_href", the character length must be great than or equal to 1.'
      end

      @location_href = location_href
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pulp_href == o.pulp_href &&
          pulp_created == o.pulp_created &&
          artifact == o.artifact &&
          name == o.name &&
          epoch == o.epoch &&
          version == o.version &&
          release == o.release &&
          arch == o.arch &&
          pkg_id == o.pkg_id &&
          checksum_type == o.checksum_type &&
          summary == o.summary &&
          description == o.description &&
          url == o.url &&
          changelogs == o.changelogs &&
          files == o.files &&
          requires == o.requires &&
          provides == o.provides &&
          conflicts == o.conflicts &&
          obsoletes == o.obsoletes &&
          suggests == o.suggests &&
          enhances == o.enhances &&
          recommends == o.recommends &&
          supplements == o.supplements &&
          location_base == o.location_base &&
          location_href == o.location_href &&
          rpm_buildhost == o.rpm_buildhost &&
          rpm_group == o.rpm_group &&
          rpm_license == o.rpm_license &&
          rpm_packager == o.rpm_packager &&
          rpm_sourcerpm == o.rpm_sourcerpm &&
          rpm_vendor == o.rpm_vendor &&
          rpm_header_start == o.rpm_header_start &&
          rpm_header_end == o.rpm_header_end &&
          is_modular == o.is_modular &&
          size_archive == o.size_archive &&
          size_installed == o.size_installed &&
          size_package == o.size_package &&
          time_build == o.time_build &&
          time_file == o.time_file
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [pulp_href, pulp_created, artifact, name, epoch, version, release, arch, pkg_id, checksum_type, summary, description, url, changelogs, files, requires, provides, conflicts, obsoletes, suggests, enhances, recommends, supplements, location_base, location_href, rpm_buildhost, rpm_group, rpm_license, rpm_packager, rpm_sourcerpm, rpm_vendor, rpm_header_start, rpm_header_end, is_modular, size_archive, size_installed, size_package, time_build, time_file].hash
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
