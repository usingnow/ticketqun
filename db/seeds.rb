# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Profile.delete_all
Profile.create!(
	profile_id: '10000',
  name: 'Aaron',
  gender: 'Male',
  id_number: '123456789X',
  id_type: 'ID Card',
  occupation: 'Teacher',
  employer: 'School A',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10001',
  name: 'Betty',
  gender: 'Female',
  id_number: '123456789X',
  id_type: 'ID Card',
  occupation: 'Teacher',
  employer: 'School A',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10002',
  name: 'Cindy',
  gender: 'Male',
  id_number: '123456789X',
  id_type: 'ID Card',
  occupation: 'Teacher',
  employer: 'School B',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10003',
  name: 'Daemon',
  gender: 'Male',
  id_number: '123456789X',
  id_type: 'ID Card',
  occupation: 'Teacher',
  employer: 'School A',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10004',
  name: 'Edward',
  gender: 'Male',
  id_number: '123456789X',
  id_type: 'ID Card',
  occupation: 'Teacher',
  employer: 'School B',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10005',
  name: 'Fentick',
  gender: 'Female',
  id_number: '123456789X',
  id_type: 'ID Card',
  occupation: 'Teacher',
  employer: 'School C',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10006',
  name: 'Grace',
  gender: 'Female',
  id_number: '6372846g',
  id_type: 'Driver Card',
  occupation: 'Teacher',
  employer: 'School B',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10007',
  name: 'Hower',
  gender: 'Male',
  id_number: '123456789X',
  id_type: 'ID Card',
  occupation: 'Teacher',
  employer: 'School C',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10008',
  name: 'Ivy',
  gender: 'Female',
  id_number: '123456789X',
  id_type: 'ID Card',
  occupation: 'Teacher',
  employer: 'School D',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10009',
  name: 'Jimmy',
  gender: 'Male',
  id_number: '7654321d',
  id_type: 'Driver Card',
  occupation: 'Teacher',
  employer: 'School A',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)

Profile.create!(
	profile_id: '10010',
  name: 'Kate',
  gender: 'Female',
  id_number: '123456789X',
  id_type: 'ID Card',
  occupation: 'Teacher',
  employer: 'School B',
  position: 'Chinese teacher',
  country: 'China',
  province: 'Shanghai',
  city: 'Shanghai',)




