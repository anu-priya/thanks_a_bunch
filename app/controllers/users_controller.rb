class UsersController < ApplicationController
	  skip_before_filter :verify_authenticity_token, :only => :send_mail
	def index
		# @user_email = User.all.uniq.map(&:email)
		@user = User.all
		@users = User.new
	end

	def send_mail
		@to = params[:to_addr]
		@email= params[:email]
		@message = params[:message]
		@timestamp =params[:timestamp]
		UserMailer.card_template(@to,@email,@message,@timestamp).deliver
	end

	private

	def user_params
		params.require(:user).permit(:to, :from,:message,:timestamp)
	end
end
