class ProgramLocationsController < ApplicationController
  before_action :set_program_location, only: [:show, :edit, :update, :destroy]

  def home
  end

  def program_employees
    @program_location = ProgramLocation.find(params[:id])
    @program_enrollments = @program_location.program_enrollments
  
    @employees = @program_location.program_employees
  end 
  # GET /program_locations
  # GET /program_locations.json
  def index
    @program_locations = ProgramLocation.all
  end

  # GET /program_locations/1
  # GET /program_locations/1.json
  
  def show
    @program_location = ProgramLocation.find(params[:id])
    @program_enrollments = @program_location.program_enrollments
    @employees = @program_location.program_employees
  end

  # GET /program_locations/new
  def new
    @program_location = ProgramLocation.new
  end

  # GET /program_locations/1/edit
  def edit
  end

  # POST /program_locations
  # POST /program_locations.json
  def create
    @program_location = ProgramLocation.new(program_location_params)

    respond_to do |format|
      if @program_location.save
        format.html { redirect_to @program_location, notice: 'Program location was successfully created.' }
        format.json { render action: 'show', status: :created, location: @program_location }
      else
        format.html { render action: 'new' }
        format.json { render json: @program_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_locations/1
  # PATCH/PUT /program_locations/1.json
  def update
    respond_to do |format|
      if @program_location.update(program_location_params)
        format.html { redirect_to @program_location, notice: 'Program location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @program_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_locations/1
  # DELETE /program_locations/1.json
  def destroy
    @program_location.destroy
    respond_to do |format|
      format.html { redirect_to programs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_location
      @program_location = ProgramLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_location_params
      params.require(:program_location).permit(:program_id, :name, :address)
    end
end
