class AddCellphoneIntoProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :cellphone, :string
  end
end
