class UserSerializer < ActiveModel::Serializer
  attributes :name, :username, :password, :city, :email, :avatar, :bio, :stars
end
