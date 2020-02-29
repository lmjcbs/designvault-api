# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :authenticate_request

  private

  def authenticate_request
    auth_header = request.headers['Authorization']
    auth_header_token = auth_header.gsub(/^Bearer /, '') if auth_header
    @current_user = AccessToken.get_user_from_token(auth_header_token)
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
