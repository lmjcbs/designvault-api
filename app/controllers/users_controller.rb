class UsersController < ApplicationController
  skip_before_action :authenticate_request!, only: :create

  def create
    user = User.new(user_params)
    if user.valid? && user.save
      cookies.signed[:session_user] = {
        value: user.id,
        httponly: true,
        expires: 1.hour.from_now
      }
      render json: UserSerializer.new(user)
    else
      render json: ErrorSerializer.serialize(user.errors)
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation
    )
  end
end