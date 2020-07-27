class TradeMailer < ApplicationMailer

    def new_trade_email
        @trade = params[:trade]
        # byebug

        mail(to: @trade.mail_to, subject: "Let Me Go! - New trade request!")
    end

end
