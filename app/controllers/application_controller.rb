class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # This is the URL redirect to dashboard via diferent login users' type.
  protected

    def after_sign_in_path_for(resource)
      if resource.class.to_s == "Employee"
        workdeck_of_admin_employee_path(resource.id)
      else
        root_path
      end
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:employee_id, :email, :password, :password_confirmation, :remember_me) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :employee_id, :email, :password, :remember_me) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:employee_id, :email, :password, :password_confirmation, :current_password) }
    end
end
