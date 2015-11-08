class ReviseProfile < ActiveRecord::Migration
  def change
    drop_table :profiles

    create_table :profiles do |t|
      t.string :profile_id
      t.string :first_name
      t.string :last_name
      t.boolean :gender
      t.boolean :mariage
      t.date :birthday
      t.string :chinese_id_number
      t.string :chinese_passport_number

      t.string :occupation
      t.string :position
      t.string :employer

      t.string :country
      t.string :province
      t.string :city
      t.string :address
      t.string :zipcode

      t.timestamps null: false
    end
  end
end