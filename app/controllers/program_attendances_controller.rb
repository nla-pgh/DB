class ProgramAttendancesController < ApplicationController
  before_action :set_program_attendance, only: [:show, :edit, :update, :destroy]

  # GET /program_attendances
  # GET /program_attendances.json
  def index
    @program_attendances = ProgramAttendance.all
  end

  def do
    @location_id = params[:location_id]
    @date = params[:date]
    @day = params[:date][:day]
    @month = params[:date][:month]
    @year = params[:date][:year]
    @program_date = ProgramDate.where(
      program_location_id: @location_id,
      date: @year + '-' + @month + '-' + @day).first_or_create
    @attendances = Array.new 

    ProgramEnrollment.where(:program_location_id => @location_id).each do |enrollment|
      @attendances << ProgramAttendance.where(
        program_enrollment_id: enrollment.id,
        program_date_id: @program_date.id).first_or_create
    end
  end

  def do_2
    atts = params[:attendances]
    if(atts != nil)
      atts.keys.each do |att|
        this_att = ProgramAttendance.find_by_id(att)
        if(this_att != nil)
          this_att.status = params[:attendances][att][:status]
          this_att.comments = params[:attendances][att][:comments]
          this_att.save
        end
      end
    end

    redirect_to :back
end

  # GET /program_attendances/1
  # GET /program_attendances/1.json
  def show
  end

  # GET /program_attendances/new
  def new
    @program_attendance = ProgramAttendance.new
  end

  # GET /program_attendances/1/edit
  def edit
  end

  # POST /program_attendances
  # POST /program_attendances.json
  def create
    @program_attendance = ProgramAttendance.new(program_attendance_params)

    respond_to do |format|
      if @program_attendance.save
        format.html { redirect_to @program_attendance, notice: 'Program attendance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @program_attendance }
      else
        format.html { render action: 'new' }
        format.json { render json: @program_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_attendances/1
  # PATCH/PUT /program_attendances/1.json
  def update
    respond_to do |format|
      if @program_attendance.update(program_attendance_params)
        format.html { redirect_to @program_attendance, notice: 'Program attendance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @program_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_attendances/1
  # DELETE /program_attendances/1.json
  def destroy
    @program_attendance.destroy
    respond_to do |format|
      format.html { redirect_to program_attendances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_attendance
      @program_attendance = ProgramAttendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_attendance_params
      params.require(:program_attendance).permit(:program_enrollment_id, :program_date_id, :status, :comments)
    end

    def program_date_params
      params.require(:program_date).permit(:location_id, :date, :day, :month, :year)
    end
end
