class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_params, if: :devise_controller?

  def configure_permitted_params
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
