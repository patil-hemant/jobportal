class UsersController < ApplicationController
	
    def new
        @user=User.new
    end

    def edit_profile
        @user = current_user
    end

    def update_profile
      super
      @user = User.find(params[:id])
        respond_to do |format|
          if @user.update(user_params)
             redirect_to new_user_educationdetail_path(@user.id), notice: 'user was successfully created.'
          else
            format.html { render action: "edit" }
          end
    end
       
        
    private
        def user_params
        params.require(:user).permit(:first_name, :last_name, :gender, :contact_no, :address, :skills, :twitter_url, :linkedin_url, :blog_url, :current_location, :ready_to_relocate, :image, :resume)
        end
  end
end
