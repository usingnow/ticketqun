class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # This is the URL redirect to dashboard via diferent login users' type.

  def after_sign_in_path_for(resource)
    if resource.class.to_s == "Employee"
      workdeck_of_admin_employee_path(resource.id)
    else
      root_path
    end
  end


end
