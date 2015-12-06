class Admin::EmployeeApplicantsController < ApplicationController
  def index
    @employee_applicant = EmployeeApplicant.all
  end

  def new
  end

  def create
    @employee_applicant = EmployeeApplicant.new(employee_applicant_params)
    @employee_applicant.save

    redirect_to new_employee_session_path
  end

  private 
    def employee_applicant_params
      params.require(:employee_applicant).permit(:employee_snum, :name, :email, :board_on, :acceptance, :created_at)
    end
end
