class DashboardsController < ApplicationController
   before_action :set_user, only: [:destroy]
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

	def destroy
    	@user.destroy
    	respond_to do |format|
      		format.html { redirect_to dashboards_url, notice: 'User was successfully destroyed.' }
      		format.json { head :no_content }
    	end
  	end

  	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:search])
      p @user.inspect
    end
end
