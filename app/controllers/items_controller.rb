class ItemsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        @items = Item.all
        render json: @items, each_serializer: ItemSerializer
    end

    def category
        category = Category.find_by(title: params[:category_name])
        @items = category.items
        render json: @items, each_serializer: ItemSerializer

        # items = Item.all.select{|i| i.category === params[:category_name]}
        # render json: items
    end

   
end
