class ProgramEmployeesController < ApplicationController
  before_action :set_program_employee, only: [:show, :edit, :update, :destroy]

  # GET /program_employees
  # GET /program_employees.json
  def index
    @program_employees = ProgramEmployee.all
  end

  # GET /program_employees/1
  # GET /program_employees/1.json
  def show
    @program_employee = ProgramEmployee.find(params[:id])
    @employees = @program_employee.program_location.program_employees
  end

  # GET /program_employees/new
  def new
    @program_employee = ProgramEmployee.new
  end

  # GET /program_employees/1/edit
  def edit
  end

  # POST /program_employees
  # POST /program_employees.json
  def create
    @program_employee = ProgramEmployee.new(program_employee_params)

    respond_to do |format|
      if @program_employee.save
        format.html { redirect_to @program_employee, notice: 'Program employee was successfully created.' }
        format.json { render action: 'show', status: :created, location: @program_employee }
      else
        format.html { render action: 'new' }
        format.json { render json: @program_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_employees/1
  # PATCH/PUT /program_employees/1.json
  def update
    respond_to do |format|
      if @program_employee.update(program_employee_params)
        format.html { redirect_to @program_employee, notice: 'Program employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @program_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_employees/1
  # DELETE /program_employees/1.json
  def destroy
    @program_employee.destroy
    respond_to do |format|
      format.html { redirect_to program_employees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_employee
      @program_employee = ProgramEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_employee_params
      params.require(:program_employee).permit(:program_location_id, :person_id, :job_description)
    end
end
