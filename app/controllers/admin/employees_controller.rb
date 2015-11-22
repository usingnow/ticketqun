class Admin::EmployeesController < ApplicationController
  def workdeck_of
    @employee = current_employee
  end
end
