# frozen_string_literal: true

# Main web application controller for Boston Sleep website.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: :devise_login?
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def devise_login?
    params[:controller] == "devise/sessions" && params[:action] == "create"
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [:first_name, :last_name, :email, :password, :password_confirmation, :emails_enabled]
    )
  end
end
