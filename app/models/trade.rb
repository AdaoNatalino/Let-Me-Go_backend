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

    def swap_owners
        first_user = self.user1 
        self.user1 = self.user2
        self.user2 = first_user
    end

    def made_by
        u = User.find(self.requested_by)
        self.users.select{ | user | user == u }
    end
   
end
