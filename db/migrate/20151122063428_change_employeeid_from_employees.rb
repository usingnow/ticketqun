class ChangeEmployeeidFromEmployees < ActiveRecord::Migration
  def up
  	rename_column :employees, :employee_id, :employee_snum
  end

  def down
  	rename_column :employees, :employee_snum, :employee_id
  en
end
