class DashboardsController < ApplicationController
	def index
		
	end

	def get_user_emails
		@result = User.user_email(params[:term])
		render :json => @result 
	end

	def fetch_user_detail
	  @list_user = User.where(email: params[:search]).uniq
	end
end
