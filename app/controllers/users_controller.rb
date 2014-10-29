class UsersController < ApplicationController
	

      def new
        @user=User.new
      
      end

     

      def create
        @user=User.new(user_params)
        if @user.save
          redirect_to new_user_educationdetail_path(@user.id), notice: 'user was successfully created.'
        else
          render :action=>:new
        end

      end

       
     
private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :contact_no, :address, :skills, :twitter_url, :linkedin_url, :blog_url, :current_location, :ready_to_relocate, :image, :resume)
  end
end
