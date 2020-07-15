class User < ApplicationRecord

    has_many :items, dependent: :destroy
    has_secure_password

    #validations:
    validates :username, uniqueness: { case_sensitive: false }


    def trades
        self.items.map {|i| i.trades }
    end
end
