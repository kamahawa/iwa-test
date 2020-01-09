class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :email, :role, :authentication_token
end
  