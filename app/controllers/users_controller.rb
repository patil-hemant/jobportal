class UsersController < ApplicationController
	
  
    def edit_profile
      @user = current_user
    end

    def update_profile

      @user = current_user
      respond_to do |format|
        if @user.update(user_params)
            format.html {redirect_to root_path, notice: 'user was successfully created.'}
        else
          format.html { render action: "edit" }
        end
      end  
    end  

        
    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :gender, :contact_no, :address, :skills, :twitter_url, :linkedin_url, :blog_url, :current_location, :ready_to_relocate, :image, :resume)
    end
end
