# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Profile.delete_all

l_names = ['刘','曹','孙','关','张','赵','马','黄','诸葛','魏']
f_names = ['备','操','权','羽','飞','云','超','忠','亮','延']

(0..50).each do |n|
  Profile.create!(profile_snum:               (10000 + n).to_s,
                  first_name:                 f_names[rand(0..9)],
                  last_name:                  l_names[rand(0..9)],
                  gender:                     true,
                  mariage:                    true,
                  birthday:                   '1980-03-25',
                  chinese_id_number:          (301010219800325243 + n).to_s,
                  chinese_passport_number:    'G12345678',
                  occupation:                 '信息科技',
                  position:                   '项目执行总监',
                  employer:                   '国际商业机器',
                  country:                    '中国',
                  province:                   '上海',
                  city:                       '市辖区',
                  address:                    '陆家嘴环路1388号16楼' + n.to_s + '座',
                  zipcode:                    (20000 + n).to_s,
                  email:                      'mail.address.' + n.to_s + '@mail.com',
                  user_id:                    ( n + 1 ).to_s,
                  cellphone:                  (13988888000 + n).to_s,
                  import_log:                 'import by default')
end