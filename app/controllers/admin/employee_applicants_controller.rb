class Admin::EmployeeApplicantsController < ApplicationController
  layout 'admin'

  def index
    @employee_applicants = EmployeeApplicant.all
  end

  def destroy
    @employee_applicants = EmployeeApplicant.find(params[:id])
    @employee_applicants.destroy

    redirect_to admin_employee_applicants_url
  end

  # private 
  #   def employee_applicant_params
  #     params.require(:employee_applicants).permit(:employee_snum, :name, :email, :board_on, :acceptance, :created_at)
  #   end
end
