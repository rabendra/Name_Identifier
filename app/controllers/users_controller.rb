class UsersController < ApplicationController
	
	def new
    @user = User.new
	end

	def create
		user = User.create(user_params)
		redirect_to users_path(:id=> user.id)
	end

	def index
		@user  = User.find(params[:id])
	end

	def checked_values
		@user = User.find(params[:id])
		@user.checked_values = params[:column]
    @user.save    
	end

	private
	def user_params
		params.require(:user).permit(:character_no)
	end

end
