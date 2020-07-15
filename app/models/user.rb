class User < ApplicationRecord

    has_many :items, dependent: :destroy
    has_secure_password

    def transactions
        self.items.map {|i| i.trade }
    end
end
