class EducationdetailsController < ApplicationController
	 before_filter :load_user

  def index
    @education_detail = @user.educationdetail

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @education_details }
    end
  end

  # GET /education_details/1
  # GET /education_details/1.json
  def show
    @education_detail = @user.educationdetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @education_detail }
    end
  end

  # GET /education_details/new
  # GET /education_details/new.json
  def new
    @education_detail = @user.educationdetail || @user.build_educationdetail

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @education_detail }
    end
  end

  # GET /education_details/1/edit
  def edit
    @education_detail = @user.educationdetail.find(params[:id])
  end

  # POST /education_details
  # POST /education_details.json
  def create
    @education_detail = @user.build_educationdetail(educationdetails_params)

    respond_to do |format|
      if @education_detail.save
        format.html { redirect_to  user_education_details_path, notice: 'Education detail was successfully created.' }
        format.json { render json: @education_detail, status: :created, location: @education_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @education_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /education_details/1
  # PUT /education_details/1.json
  def update
    @education_detail = @user.educationdetail.find(params[:id])

    respond_to do |format|
      if @education_detail.update(educationdetails_params)
        format.html { redirect_to @education_detail, notice: 'Education detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @education_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_details/1
  # DELETE /education_details/1.json
  def destroy
    @education_detail = @user.educationdetail.find(params[:id])
    @education_detail.destroy

    respond_to do |format|
      format.html { redirect_to education_details_url }
      format.json { head :no_content }
    end
  end

  protected
  def load_user
   @user = User.find(params[:user_id]) 
  end
end

 private
  def educationdetails_params
    params.require(:educationdetail).permit(:ssc_yr, :ssc_institute, :ssc_percentage, :hsc_yr, :hsc_institute, :hsc_percentage, :grad_course, :grad_specialization, :grad_institute, :grad_yr, :grad_percentage, :postgrad_course, :postgrad_specialization, :postgrad_institute, :postgrad_yr, :postgrad_percentage, :user_id, :other_qualification)
  end