class Admin::EmployeesController < ApplicationController
  before_filter :authenticate_employee!

  layout 'admin'

  def workdeck_of
    @employee = current_employee
  end
end
