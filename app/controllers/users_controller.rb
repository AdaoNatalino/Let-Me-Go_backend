class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  
  def create
    @user = User.create(user_params)
    if @user.valid?

      # @token = encode_token( { user_id: @user.id } )
      @token = token_with_used_id_and_time(@user)

      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: @user.errors.full_messages }, status: :not_acceptable
    end
  end

  def update
    @user = current_user
    @user.update(user_params)
    if @user.valid?
      # @token = encode_token( { user_id: @user.id } )
      
      @token = token_with_used_id_and_time(@user)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: @user.errors.full_messages }, status: :not_acceptable
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :username, :password, :city, :email, :avatar, :bio, :stars)
  end
  end