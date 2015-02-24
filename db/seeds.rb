# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
  {:fname => "Anupriya", :lname => "Devaraj", :email =>"anupriya.d@calsoftlabs.com", :emp_id => 3199, :manager_id => 1},
  {:fname => "Rahila", :lname => "Begam", :email =>"rahila.begam@calsoftlabs.com", :emp_id => 3191 , :manager_id => 1},
  {:fname => "Bala", :lname => "D", :email =>"dhandayudhapani.b@calsoftlabs.com", :emp_id => 3192, :manager_id => 1},
  {:fname => "Phanija", :lname => "krishna", :email =>"krishna.phanija@calsoftlabs.com", :emp_id => 3129, :manager_id => 1},
  {:fname => "Malarvannan", :lname => "M", :email =>"malarvannan.m@calsoftlabs.com", :emp_id => 3193, :manager_id => 2},
  {:fname => "Lakshmi", :lname => "rajkumar", :email =>"lakshmi.rajkumar@calsoftlabs.com", :emp_id => 3194, :manager_id => 2}
])
managers = Manager.create([
	{:manager_id => 1, :fname => "Arif" , :lname => "N", :email => "arifn@calsoftlabs.com", :emp_id => 1000},
	{:manager_id => 2, :fname => "Bijiu" , :lname => "P", :email => "baiju@calsoftlabs.com", :emp_id => 1001}
])