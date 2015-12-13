class Admin::EmployeeApplicantsController < ApplicationController
  before_filter :authenticate_employee!

  layout 'admin'

  def index
    @employee_applicants = EmployeeApplicant.paginate(page: params[:page], per_page: 12)
  end

  def destroy
    @employee_applicants = EmployeeApplicant.find(params[:id])
    @employee_applicants.destroy

    redirect_to '/admin/employee_applicants'
  end

  private 
    def employee_applicant_params
      params.require(:employee_applicants).permit(:employee_snum, :name, :email, 
                                                  :board_on, :acceptance, :created_at)
    end
end
