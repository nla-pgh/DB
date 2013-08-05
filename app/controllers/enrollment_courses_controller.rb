class EnrollmentCoursesController < ApplicationController
  before_action :set_enrollment_course, only: [:show, :edit, :update, :destroy]

  # GET /enrollment_courses
  # GET /enrollment_courses.json
  def index
    @enrollment_courses = EnrollmentCourse.all
  end

  # GET /enrollment_courses/1
  # GET /enrollment_courses/1.json
  def show
  end

  # GET /enrollment_courses/new
  def new
    @enrollment_course = EnrollmentCourse.new
  end

  # GET /enrollment_courses/1/edit
  def edit
    # @enrollment_of_person = ProgramEnrollment.where(:person_id => params[:people]).first
    # @enrollment_course.enrollment_id = @enrollment_of_person.id
  end

  # POST /enrollment_courses
  # POST /enrollment_courses.json
  def create
    @enrollment_course = EnrollmentCourse.new(enrollment_course_params)
    @enrollment_of_person = ProgramEnrollment.where(:person_id => params[:people]).first
    @enrollment_course.program_enrollment_id = @enrollment_of_person.id

    respond_to do |format|
      if @enrollment_course.save
        format.html { redirect_to @enrollment_course, notice: 'Enrollment course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @enrollment_course }
      else
        format.html { render action: 'new' }
        format.json { render json: @enrollment_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollment_courses/1
  # PATCH/PUT /enrollment_courses/1.json
  def update
    respond_to do |format|
      if @enrollment_course.update(enrollment_course_params)
        format.html { redirect_to @enrollment_course, notice: 'Enrollment course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @enrollment_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollment_courses/1
  # DELETE /enrollment_courses/1.json
  def destroy
    @enrollment_course.destroy
    respond_to do |format|
      format.html { redirect_to enrollment_courses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment_course
      @enrollment_course = EnrollmentCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrollment_course_params
      params.require(:enrollment_course).permit!
    end
end
