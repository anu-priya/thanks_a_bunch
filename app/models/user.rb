class User < ActiveRecord::Base
	def self.user_email(search)
		if search
	  		search_condition = "%" + search + "%"
	  		where("fname like ? or email like ? or lname like ? or emp_id like ?", search_condition, search_condition, search_condition, search_condition).map(&:email)
	    else
			# 	all
		end 
	end
end