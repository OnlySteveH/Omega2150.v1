class ApplicationController < ActionController::Base
  before_action :authenticate_author!
  before_action :configure_permitted_params, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def configure_permitted_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:first_name, :last_name,
                                               :email, :password, :remember_me,
                                               :password_confirmation)}
    devise_parameter_sanitizer.for(:account_update){|u| u.permit(:email, :password,
                                                    :password_confirmation, :current_password)}
    devise_parameter_sanitizer.for(:sign_in){|u| u.permit(:email, :password)}
  end

end
