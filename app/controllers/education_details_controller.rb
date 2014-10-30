class EducationDetailsController < ApplicationController
   respond_to :html, :xml, :json
  before_action :set_education_detail, only: [:show, :edit, :update, :destroy]

  def index
    @education_details = current_user.education_details
    respond_with(@education_details)
  end

  def show
    respond_with(@education_detail)
  end

  def new
    @education_detail = current_user.education_details.new
    respond_with(@education_detail)
  end

  def edit
  end

  def create
    @education_detail = current_user.education_details.new(education_detail_params)
    @education_detail.save
    respond_with(@education_detail)
  end

  def update
    @education_detail.update(education_detail_params)
    respond_with(@education_detail)
  end

  def destroy
    @education_detail.destroy
    respond_with(@education_detail)
  end

  private
    def set_education_detail
      @education_detail = current_user.education_details.find(params[:id])
    end

    def education_detail_params
      params.require(:education_detail).permit(:name, :institute, :passout_year, :score)
    end
end
