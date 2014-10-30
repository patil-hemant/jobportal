class WorkExperiencesController < ApplicationController
	    
      def new
        @work_experience=@user.WorkExperience.new
      
      end

      def show
        @work_experience=@user.WorkExperience.find(params[:id])
      end
     

      def create
        @work_experience=@user.WorkExperience.new(work_experience_params)
        if @work_experience.save
          redirect_to work_experiences_path
        else
          render :action=>:new
        end

      end

      def edit
        @work_experience=@user.WorkExperience.find(params[:id])
      end

      def update
        @work_experience=@user.WorkExperience.find(params[:id])
        if @work_experience.update(work_experience_params)
          redirect_to work_experience_path(@work_experience)
        else
          render :action=>:edit
        end
      end

      def destroy
        @work_experience=@user.WorkExperience.find(params[:id])
        @work_experience.destroy
        redirect_to work_experiences_path
      end

      private
  	  def work_experience_params
   		 params.require(:work_experience).permit(:name_of_company,:company_description,:your_designation,:start_date,:end_date,:user_id,:employment_status)
 	  end

end
