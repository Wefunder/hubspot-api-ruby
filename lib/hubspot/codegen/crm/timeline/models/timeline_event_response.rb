=begin
#Timeline events

#This feature allows an app to create and configure custom events that can show up in the timelines of certain CRM objects like contacts, companies, tickets, or deals. You'll find multiple use cases for this API in the sections below.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module Hubspot
  module Crm
    module Timeline
      class TimelineEventResponse
        # Identifier for the event. This should be unique to the app and event template. If you use the same ID for different CRM objects, the last to be processed will win and the first will not have a record. You can also use `{{uuid}}` anywhere in the ID to generate a unique string, guaranteeing uniqueness.
        attr_accessor :id

        # The event template ID.
        attr_accessor :event_template_id

        # The email address used for contact-specific events. This can be used to identify existing contacts, create new ones, or change the email for an existing contact (if paired with the `objectId`).
        attr_accessor :email

        # The CRM object identifier. This is required for every event other than contacts (where utk or email can be used).
        attr_accessor :object_id

        # Use the `utk` parameter to associate an event with a contact by `usertoken`. This is recommended if you don't know a user's email, but have an identifying user token in your cookie.
        attr_accessor :utk

        # The event domain (often paired with utk).
        attr_accessor :domain

        # The time the event occurred. If not passed in, the curren time will be assumed. This is used to determine where an event is shown on a CRM object's timeline.
        attr_accessor :timestamp

        # A collection of token keys and values associated with the template tokens.
        attr_accessor :tokens

        # Additional event-specific data that can be interpreted by the template's markdown.
        attr_accessor :extra_data

        attr_accessor :timeline_i_frame

        # The ObjectType associated with the EventTemplate.
        attr_accessor :object_type

        attr_accessor :created_at

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'id' => :'id',
            :'event_template_id' => :'eventTemplateId',
            :'email' => :'email',
            :'object_id' => :'objectId',
            :'utk' => :'utk',
            :'domain' => :'domain',
            :'timestamp' => :'timestamp',
            :'tokens' => :'tokens',
            :'extra_data' => :'extraData',
            :'timeline_i_frame' => :'timelineIFrame',
            :'object_type' => :'objectType',
            :'created_at' => :'createdAt'
          }
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'id' => :'String',
            :'event_template_id' => :'String',
            :'email' => :'String',
            :'object_id' => :'String',
            :'utk' => :'String',
            :'domain' => :'String',
            :'timestamp' => :'DateTime',
            :'tokens' => :'Hash<String, String>',
            :'extra_data' => :'Object',
            :'timeline_i_frame' => :'TimelineEventIFrame',
            :'object_type' => :'String',
            :'created_at' => :'DateTime'
          }
        end

        # List of attributes with nullable: true
        def self.openapi_nullable
          Set.new([
          ])
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          if (!attributes.is_a?(Hash))
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Timeline::TimelineEventResponse` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Timeline::TimelineEventResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'id')
            self.id = attributes[:'id']
          end

          if attributes.key?(:'event_template_id')
            self.event_template_id = attributes[:'event_template_id']
          end

          if attributes.key?(:'email')
            self.email = attributes[:'email']
          end

          if attributes.key?(:'object_id')
            self.object_id = attributes[:'object_id']
          end

          if attributes.key?(:'utk')
            self.utk = attributes[:'utk']
          end

          if attributes.key?(:'domain')
            self.domain = attributes[:'domain']
          end

          if attributes.key?(:'timestamp')
            self.timestamp = attributes[:'timestamp']
          end

          if attributes.key?(:'tokens')
            if (value = attributes[:'tokens']).is_a?(Hash)
              self.tokens = value
            end
          end

          if attributes.key?(:'extra_data')
            self.extra_data = attributes[:'extra_data']
          end

          if attributes.key?(:'timeline_i_frame')
            self.timeline_i_frame = attributes[:'timeline_i_frame']
          end

          if attributes.key?(:'object_type')
            self.object_type = attributes[:'object_type']
          end

          if attributes.key?(:'created_at')
            self.created_at = attributes[:'created_at']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @id.nil?
            invalid_properties.push('invalid value for "id", id cannot be nil.')
          end

          if @event_template_id.nil?
            invalid_properties.push('invalid value for "event_template_id", event_template_id cannot be nil.')
          end

          if @tokens.nil?
            invalid_properties.push('invalid value for "tokens", tokens cannot be nil.')
          end

          if @object_type.nil?
            invalid_properties.push('invalid value for "object_type", object_type cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @id.nil?
          return false if @event_template_id.nil?
          return false if @tokens.nil?
          return false if @object_type.nil?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              id == o.id &&
              event_template_id == o.event_template_id &&
              email == o.email &&
              object_id == o.object_id &&
              utk == o.utk &&
              domain == o.domain &&
              timestamp == o.timestamp &&
              tokens == o.tokens &&
              extra_data == o.extra_data &&
              timeline_i_frame == o.timeline_i_frame &&
              object_type == o.object_type &&
              created_at == o.created_at
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [id, event_template_id, email, object_id, utk, domain, timestamp, tokens, extra_data, timeline_i_frame, object_type, created_at].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def self.build_from_hash(attributes)
          new.build_from_hash(attributes)
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)
          self.class.openapi_types.each_pair do |key, type|
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
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
          when :Boolean
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
            Hubspot::Crm::Timeline.const_get(type).build_from_hash(value)
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
            if value.nil?
              is_nullable = self.class.openapi_nullable.include?(attr)
              next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
            end
            
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
  end
end
