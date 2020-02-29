# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
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
      render json: user, status: 200
    else
      render json: {
        status: 'error',
        message: 'Invalid login details'
      }, status: 400
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
