class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar_url, :neighborhood, :pets, :created_at, :mobile, :email
end
