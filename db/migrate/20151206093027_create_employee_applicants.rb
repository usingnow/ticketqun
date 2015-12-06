class CreateEmployeeApplicants < ActiveRecord::Migration
  def change
    create_table :employee_applicants do |t|
      t.string :employee_snum
      t.string :name
      t.string :email
      t.date :board_on    # 入职日期
      t.boolean :acceptance  # 是否创建
      
      t.timestamps null: false
    end
  end
end
