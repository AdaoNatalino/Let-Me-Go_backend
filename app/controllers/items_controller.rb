class ItemsController < ApplicationController
    # skip_before_action :authorized, only: [:index]

    def index
        @items = Item.all
        render json: @items, each_serializer: ItemSerializer
    end

    def create
        @item = Item.create(item_params)
        # byebug
        if @item.valid?
          render json: { item: ItemSerializer.new(@item) }, status: :created
        else
          render json: { error: @item.errors.full_messages }, status: :not_acceptable
        end
    end

    def category
        category = Category.find_by(title: params[:category_name])
        @items = category.items
        render json: @items, each_serializer: ItemSerializer

        # items = Item.all.select{|i| i.category === params[:category_name]}
        # render json: items
    end

    private
   
    def item_params
      params.require(:item).permit(:name, :description, :condition, :category_id, :image, :user_id)
    end
   
end
