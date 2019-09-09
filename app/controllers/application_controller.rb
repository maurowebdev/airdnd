class ApplicationController < ActionController::Base
  before_action :configure_permit_parameters, if: :devise_controller?

  protected

  def configure_permit_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name])
    devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name, :phone, :description])
  end
end
