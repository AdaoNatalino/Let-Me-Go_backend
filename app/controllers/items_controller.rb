class ItemsController < ApplicationController
    # skip_before_action :authorized, only: [:index]

    def index
        @items = Item.all
        render json: @items, each_serializer: ItemSerializer
    end

    def myItems
      @user = User.find(params[:id])
      @items = @user.available_for_trade
      render json: @items, each_serializer: ItemSerializer
    end

    def create
        @item = Item.create(item_params)
        if @item.valid?
          render json: { item: ItemSerializer.new(@item) }, status: :created
        else
          render json: { error: @item.errors.full_messages }, status: :not_acceptable
        end
    end

    def category
        category = Category.find_by(title: params[:category_name])
        @items = category.available_for_trade
        render json: @items, each_serializer: ItemSerializer
    end

    private
   
    def item_params
      params.require(:item).permit(:name, :description, :condition, :category_id, :image, :user_id)
    end
   
end
