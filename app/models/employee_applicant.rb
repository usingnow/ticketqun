class EmployeeApplicant < ActiveRecord::Base

  validate do |employee_applicant|
    employee_applicant.errors.add(:base, "员工号不能为空！") if employee_applicant.employee_snum.blank?
    employee_applicant.errors.add(:base, "邮箱号不能为空！") if employee_applicant.email.blank?
    employee_applicant.errors.add(:base, "姓名号不能为空！") if employee_applicant.name.blank?
    employee_applicant.errors.add(:base, "入职日期不能为空！") if employee_applicant.board_on.blank?
  end

end