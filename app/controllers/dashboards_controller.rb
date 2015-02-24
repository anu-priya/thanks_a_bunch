class DashboardsController < ApplicationController

	def index
		
	end

	def get_user_emails
		@result = User.user_email(params[:term])
		render :json => @result 
	end

	def fetch_user_detail
		search_input = params[:search].split(",").uniq
  		@list_user = User.where(email: search_input)
	end

	def user_detail
		@email = params[:email].split(",").uniq
		@theme = params[:theme]
		@email.each do |email_addr|
		 UserMailer.delay.thanks_template(email_addr,@theme)
		end
	end

end
