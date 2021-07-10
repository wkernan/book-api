#User serializer
class SerializableUser < JSONAPI::Serializable::Resource
  type 'user'

  attributes :bio, :pretty_name
end
