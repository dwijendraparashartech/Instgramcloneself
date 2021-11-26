class UsersController < ApplicationController
	def show
      @user = User.find(params[:id])
	end
    
    def create 
    	@user = User.new(user_params)
    	if @user.save
    		redirect_to users_path
    	else
    	end
    end

	def edit 
		@user = User.find(params[:id])
	end 

    def index 
    	@users =User.all
    end


	private 

	def user_params
		params.require(:user).permit(:username,:name, :website, :bio, :email, :phone, :gender, :nick_name)
	end

end
