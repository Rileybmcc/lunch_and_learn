class UserSerializer
  include JSONAPI::Serializer

  set_type 'user'
  :id
  attributes :name, :email, :api_key

end
