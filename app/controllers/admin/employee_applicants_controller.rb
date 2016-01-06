class Admin::EmployeeApplicantsController < ApplicationController
  before_filter :authenticate_employee!, except: [:new, :create]

  layout 'admin', except: [:new, :create]

  def index
    @employee_applicants = EmployeeApplicant.paginate(page: params[:page], per_page: 12)
  end

  def destroy
    @employee_applicants = EmployeeApplicant.find(params[:id])
    @employee_applicants.destroy

    redirect_to '/admin/employee_applicants'
  end

  def new
    @employee_applicant = EmployeeApplicant.new
  end

  def create
    @employee_applicant = EmployeeApplicant.new(employee_applicant_params)
    
    if @employee_applicant.save
      redirect_to '/employees/sign_in'
    else
      render 'new'
    end
  end

  private 
    def employee_applicant_params
      params.require(:employee_applicants).permit(:employee_snum, :name, :email, 
                                                  :board_on, :acceptance, :created_at)
    end
end
