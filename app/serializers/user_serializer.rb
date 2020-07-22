class UserSerializer < ActiveModel::Serializer
  attributes :name, :username, :city, :email, :avatar, :bio, :stars, :id, :items
end
