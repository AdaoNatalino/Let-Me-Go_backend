class TradeSerializer < ActiveModel::Serializer
  attributes :item1, :user1, :item2, :user2, :created_at, :status, :id, :requested_by
end
