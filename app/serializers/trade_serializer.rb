class TradeSerializer < ActiveModel::Serializer
  attributes :item1, :user1, :item2, :user2, :date, :status 
end
