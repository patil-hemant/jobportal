class WorkExperiencesController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_work_experience, only: [:show, :edit, :update, :destroy]

  def index
    @work_experiences = current_user.work_experiences.all
    respond_with(@work_experiences)
  end

  def show
    respond_with(@work_experience)
  end

  def new
    @work_experience = current_user.work_experiences.new
    respond_with(@work_experience)
  end

  def edit
  end

  def create
    @work_experience = current_user.work_experiences.new(work_experience_params)
    @work_experience.save
   
    redirect_to work_experiences_path, :notice => 'Added work experience successfully !'
  end

  def update
    @work_experience.update(work_experience_params)
    redirect_to work_experiences_path, :notice => 'Edited work experience successfully !'
  end

  def destroy
    @work_experience.destroy
    respond_with(@work_experience)
  end

  private
    def set_work_experience
      @work_experience = current_user.work_experiences.find(params[:id])
    end

    def work_experience_params
      params.require(:work_experience).permit(:company_name, :Company_description, :your_designation, :start_date, :end_date, :user_id)
    end
end
