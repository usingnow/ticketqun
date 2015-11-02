class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :profile_id
      t.string :name
      t.string :gender
      t.string :id_number
      t.string :id_type
      t.string :occupation
      t.string :employer
      t.string :position
      t.string :country
      t.string :province
      t.string :city

      t.timestamps null: false
    end
  end
end
