class ItemsController < ApplicationController

    def index
      @items = Item.all
      render json: @items, each_serializer: ItemSerializer
    end

    def edit
      @item = Item.find(params[:id])
      render json: @item, serializer: ItemSerializer
    end

    def update
      @item = Item.find(params[:id])
      @item.update(item_params)
      if @item.valid?
        render json: { item: ItemSerializer.new(@item) }, status: :created
      else
        render json: { error: @item.errors.full_messages }, status: :not_acceptable
      end
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

    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      render json: { item: "Item Deleted!" }, status: :accepted
    end

    private
   
    def item_params
      params.require(:item).permit(:name, :description, :condition, :category_id, :image, :user_id)
    end
   
end
