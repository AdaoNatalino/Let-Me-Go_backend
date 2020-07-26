class TradeMailer < ApplicationMailer

    def new_trade_email
        @trade = params[:trade]
        mail(to: "larissa_diz@hotmail.com", subject: "You got a new trade request!")
    end
end
