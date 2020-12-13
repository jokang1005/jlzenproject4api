class StudentProfilesController < ApplicationController
  before_action :set_student_profile, only: [:show, :update, :destroy]
  # before_action :authorized

  # GET /student_profiles
  def index
    @student_profiles = StudentProfile.all  
    render json: @student_profiles
  end

  # GET /student_profiles/1
  def show
    render json: @student_profile
  end

  # POST /student_profiles
  def create
    @student_profile = StudentProfile.new(student_profile_params)
    # @student_profile.user = @user.id

    if @student_profile.save
      render json: @student_profile, status: :created, location: @student_profile
    else
      render json: @student_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /student_profiles/1
  def update
    if @student_profile.update(student_profile_params)
      render json: @student_profile
    else
      render json: @student_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_profiles/1
  def destroy
    @student_profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_profile
      @student_profile = StudentProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_profile_params
      params.require(:student_profile).permit(:student_id, :name, :address, :guardian1, :guardian1_number, :guardian2, :guardian2_number)
    end
end
