class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def card_template(to_addr,from,message,timestamp)
  	# mail(to: to_addr, subject: message, cc:"anupriyaraji@gmail.com")
  	mail(to: to_addr, subject: message)
  end

end
