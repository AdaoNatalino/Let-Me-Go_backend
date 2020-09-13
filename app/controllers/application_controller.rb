class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, ENV['JWT_SECRET'])
  end

  def token_with_user_id_and_time(user)
    issued_date = Time.now.to_i
    encode_token( { user_id: user.id, issued_date: issued_date } )
  end

  def token_issued_less_than_third_minutes_ago?(issued_date)
    difference = (Time.now.to_i - issued_date) < 1800 ? true : false
  end

  def auth_header
    request.headers['Authorization']
  end
  
  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        decoded_token = JWT.decode(token, ENV['JWT_SECRET'], true, algorithm: 'HS256')
        issued_date = decoded_token[0]['issued_date']
        if token_issued_less_than_third_minutes_ago?(issued_date)
          decoded_token
        end
      rescue JWT::DecodeError
        nil
      end
    end
  end
  
  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find(user_id)
    end
  end
  
  def logged_in?
    !!current_user
  end
  
  def authorized
    render json: { message: 'Not logged in or Token expired, Please log in!' }, status: :unauthorized unless logged_in?
  end
  
end