# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_request, only: %i[login register]

  def register
    user = User.new(user_params)
    if user.valid? && user.save
      render json: user, status: 201
    else
      render json: user.errors, status: 400
    end
  end

  def login
    user = User.find_by(email: params[:user][:email])
    user_is_valid = user&.valid_password?(params[:user][:password])
    if user_is_valid
      access_token = AccessToken.encode({ user_id: user.id })
      render json: user, meta: { access_token: access_token }, status: 200
    else
      render json: { error: 'Invalid login details' }, status: 400
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
