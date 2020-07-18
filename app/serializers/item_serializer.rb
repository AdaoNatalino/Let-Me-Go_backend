class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :condition
  belongs_to :user
  belongs_to :category
end
