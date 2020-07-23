class TradesController < ApplicationController

    def myTrades
      @user = User.find(params[:id])
      # byebug
      @trades = @user.trades
      render json: @trades, each_serializer: TradeSerializer
    end

    def reject
      @trade = Trade.find(params[:id])
      # byebug
      @trade.update(status: "Rejected")
    
      render json: { trade: @trade }
    end

    def approve_request
      @trade = Trade..find(params[:id])
      @trade.update(status: "Approved")
    end

    def create
      @trade = Trade.create(trade_params)
      # @trade.date = Date.today
      # byebug
      if @trade.valid?
        render json: { trade: @trade }, status: :created
      else
        render json: { error: @trade.errors.full_messages }, status: :not_acceptable
      end
      end

      private

      def trade_params
        params.require(:trade).permit(:item1_id, :item2_id)
      end
end
