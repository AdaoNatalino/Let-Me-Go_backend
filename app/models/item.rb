class Item < ApplicationRecord

    belongs_to :user
    belongs_to :category

    def trades
        Trade.select{|t| t.item1_id === self.id || t.item2_id === self.id}
    end
end
