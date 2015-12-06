class Admin::EmployeeApplicantsController < ApplicationController
  layout 'admin'

  def index
    @employee_applicants = EmployeeApplicant.all
  end

  private 
    def employee_applicant_params
      params.require(:employee_applicant).permit(:employee_snum, :name, :email, :board_on, :acceptance, :created_at)
    end
end
