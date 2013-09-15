class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # Disabled for API
  # protect_from_forgery with: :exception

  respond_to :json

  def current_user
    @current_user ||= User.where(uuid: params[:user_uuid]).first_or_create
  end
end
