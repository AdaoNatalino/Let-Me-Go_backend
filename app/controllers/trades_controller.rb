class TradesController < ApplicationController

    def create
        @trade = Trade.create(trade_params)
        if trade.valid?
          render json:{ @trade }, status: :created
        else
          render json: { error: @trade.errors.full_messages }, status: :not_acceptable
        end
      end

      private

      def trade_params
        params.require(:trade).permit(:item1_id, :item2_id)
      end
end
