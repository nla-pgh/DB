class NovanetCoursesController < ApplicationController
  before_action :set_novanet_course, only: [:show, :edit, :update, :destroy]

  # GET /novanet_courses
  # GET /novanet_courses.json
  def index
    @novanet_courses = NovanetCourse.all
  end

  # GET /novanet_courses/1
  # GET /novanet_courses/1.json
  def show
  end

  # GET /novanet_courses/new
  def new
    @novanet_course = NovanetCourse.new
  end

  # GET /novanet_courses/1/edit
  def edit
  end

  # POST /novanet_courses
  # POST /novanet_courses.json
  def create
    @novanet_course = NovanetCourse.new(novanet_course_params)

    respond_to do |format|
      if @novanet_course.save
        format.html { redirect_to @novanet_course, notice: 'Novanet course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @novanet_course }
      else
        format.html { render action: 'new' }
        format.json { render json: @novanet_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novanet_courses/1
  # PATCH/PUT /novanet_courses/1.json
  def update
    respond_to do |format|
      if @novanet_course.update(novanet_course_params)
        format.html { redirect_to @novanet_course, notice: 'Novanet course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @novanet_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novanet_courses/1
  # DELETE /novanet_courses/1.json
  def destroy
    @novanet_course.destroy
    respond_to do |format|
      format.html { redirect_to novanet_courses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novanet_course
      @novanet_course = NovanetCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novanet_course_params
      params.require(:novanet_course).permit(:name, :subject)
    end
end
