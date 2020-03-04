class SessionsController < ApplicationController
  skip_before_action :authenticate_request!, only: [:login, :logout]

  def login
    user = User.find_by(email: params[:user][:email])
    if user&.valid_password?(params[:user][:password])
      cookies.signed[:session_user] = {
          value: user.id,
          httponly: true,
          expires: 1.hour.from_now
        }
      render json: UserSerializer.new(user)
    else
      render json: { errors: [{ title: 'Invalid login details' }] }
    end
  end

  def logout
    cookies.delete(:session_user)
  end

  def authenticate
    if @current_user.nil?
      render json: { errors: [{ title: 'Please Log in' }] }
    else
      render json: UserSerializer.new(@current_user)
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password
    )
  end
end