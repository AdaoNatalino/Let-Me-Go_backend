class Trade < ApplicationRecord

    belongs_to :item1, class_name: "Item", foreign_key: :item1_id
    belongs_to :item2, class_name: "Item", foreign_key: :item2_id

    def users
        [self.user1, self.user2] 
    end

    def user1
        self.item1.user
    end

    def user2
        self.item2.user
    end

   
end
