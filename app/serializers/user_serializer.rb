class UserSerializer < ActiveModel::Serializer
  attributes :name, :username, :city, :email, :avatar, :bio, :stars, :id, :available_for_trade
end
