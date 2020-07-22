class User < ApplicationRecord

    has_many :items, dependent: :destroy
    has_secure_password

    #validations:
    validates :name, :username, :email, :city, :bio, presence: true
    validates :name, length: { in: 2..100 }
    validates :password, length: { in: 6..20 }
    validates :bio, length: { maximum: 250 }
    validates :username, uniqueness: { case_sensitive: false }
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    def trades
        self.items.map {|i| i.trades }.flatten
    end
end
