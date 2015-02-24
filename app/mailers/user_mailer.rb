class UserMailer < ActionMailer::Base
	default from: "anupriya.d@calsoftlabs.com"

	def thanks_template(user,theme)
		headers['X-No-Spam'] = 'True'
		mail :to => user, :subject => "Thanks A Bunch"
	end

end


