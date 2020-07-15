class Item < ApplicationRecord

    belongs_to :user

    def trade
        Transaction.find{|t| t.item1_id === self.id || t.item2_id === self.id}
    end
end
