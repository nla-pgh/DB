class ProgramEnrollmentsController < ApplicationController
  before_action :set_program_enrollment, only: [:show, :edit, :update, :destroy]

  # GET /program_enrollments
  # GET /program_enrollments.json
  def index
    @program_enrollments = ProgramEnrollment.all
  end

  # GET /program_enrollments/1
  # GET /program_enrollments/1.json
  def show
  end

  # GET /program_enrollments/id
  def new
    @program_enrollment = ProgramEnrollment.new
    @id = params[:id]
  end

  # GET /program_enrollments/1/edit
  def edit
  end

  # POST /program_enrollments
  # POST /program_enrollments.json
  def create
    @program_enrollment = ProgramEnrollment.new(program_enrollment_params)

    respond_to do |format|
      if @program_enrollment.save
        format.html { redirect_to @program_enrollment, notice: 'Program enrollment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @program_enrollment }
      else
        format.html { render action: 'new' }
        format.json { render json: @program_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_enrollments/1
  # PATCH/PUT /program_enrollments/1.json
  def update
    respond_to do |format|
      if @program_enrollment.update(program_enrollment_params)
        format.html { redirect_to @program_enrollment, notice: 'Program enrollment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @program_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_enrollments/1
  # DELETE /program_enrollments/1.json
  def destroy
    @program_enrollment.destroy
    respond_to do |format|
      format.html { redirect_to programs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_enrollment
      @program_enrollment = ProgramEnrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_enrollment_params
      params.require(:program_enrollment).permit(:program_location_id, :person_id)
    end
end
