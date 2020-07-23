class User < ApplicationRecord

    has_many :items, dependent: :destroy
    has_secure_password

    #validations:
    validates :name, :username, :email, :city, :bio, presence: true
    validates :name, length: { in: 2..100 }
    validates :password, length: { in: 5..20 }
    validates :bio, length: { maximum: 250 }
    validates :username, uniqueness: { case_sensitive: false }
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    def no_trades
        self.items.select{ |item| item.trades.length == 0 }
    end

    def with_trades
        self.items.select{ |item| item.trades.length > 0 }
    end

    def available_for_trade

        trades_not_approved = self.with_trades.select{ |item| item.trades.all? {|t| t.status != "Approved" } }
        
        without_trades = self.no_trades

        available = [trades_not_approved, without_trades].flatten
    end

    def trades
        self.items.map {|i| i.trades }.flatten
    end
end
