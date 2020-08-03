class AuthController < ApplicationController
  skip_before_action :authorized, only: [:login]
  
  def login
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])

      @token = token_with_user_id_and_time(@user)

      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end
  
  def validate
    @token = token_with_user_id_and_time(@user)
    render json: { user: UserSerializer.new(current_user), jwt: @token }
  end

  private
  
  def user_login_params
    params.require(:user).permit(:username, :password)
  end
end