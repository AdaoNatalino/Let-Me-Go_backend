class Category < ApplicationRecord
    has_many :items

    def no_trades
        self.items.select{ |item| item.trades.length == 0 }
    end

    def with_trades
        self.items.select{ |item| item.trades.length > 0 }
    end

    def available_for_trade

        trades_not_approved = self.with_trades.select{ |item| item.trades.select{ |trade| trade.status != "Approved"} }
        without_trades = self.no_trades

        available = [trades_not_approved, without_trades].flatten
    end

end
