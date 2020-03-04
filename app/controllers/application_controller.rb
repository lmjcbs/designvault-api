# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ::ActionController::Cookies
  before_action :authenticate_request!

  def authenticate_request!
    if cookies.signed[:session_user].blank?
      render json: { errors: 'Unauthorized' }
    else
      user_id = cookies.signed[:session_user]
      @current_user = User.find(user_id)
    end
  end

  private

  def current_user
    @current_user
  end
end
