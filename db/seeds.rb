# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# class ReviseProfile < ActiveRecord::Migration
#   def change
#     drop_table :profiles

#     create_table :profiles do |t|
#       t.string :profile_id
#       t.string :first_name
#       t.string :last_name
#       t.boolean :gender
#       t.boolean :mariage
#       t.date :birthday
#       t.string :chinese_id_number
#       t.string :chinese_passport_number

#       t.string :occupation
#       t.string :position
#       t.string :employer

#       t.string :country
#       t.string :province
#       t.string :city
#       t.string :address
#       t.string :zipcode

#       t.timestamps null: false
#     end
#   end
# end

Profile.delete_all
Profile.create!(
	profile_id:                 '10000',
  first_name:                 'Jimmy',
  last_name:                  'Xu',
  gender:                     true,
  mariage:                    true,
  birthday:                   '1980-03-25',
  chinese_id_number:          '3010102198003252439',
  chinese_passport_number:    'G12345678',
  occupation:                 '信息科技',
  position:                   '项目执行总监',
  employer:                   '国际商业机器',
  country:                    '中国',
  province:                   '上海',
  city:                       '市辖区',
  address:                    '陆家嘴环路1388号16楼',
  zipcode:                    '200001',)


