class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success, :info, :warning, :danger

  def after_sign_out_path_for(resource)
    '/users/sign_in' # サインアウト後のリダイレクト先URL
  end

  def after_sign_in_path_for(resource)
    '/'
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:username, :member, :profile, :works, :avatar)
  end


end
