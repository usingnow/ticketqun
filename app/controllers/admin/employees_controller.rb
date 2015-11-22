class Admin::EmployeesController < ApplicationController
  layout 'admin'

  def workdeck_of
    @employee = current_employee
  end
end
