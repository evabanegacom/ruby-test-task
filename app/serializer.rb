class Serializer
    def initialize(object)
      @object = object
    end

    def serialize
      @object.members.inject({}) do | result, element |
        result[element] = @object[element]
        result.compact
      end
    end
end
