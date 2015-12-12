class EmployeeApplicantsController < ApplicationController
  
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_applicant_params
      params.require(:employee_applicant).permit(:employee_snum, :name, :email, 
                                                 :board_on, :acceptance, :created_at)
    end
end
