class EventEmployeesController < ApplicationController
  before_action :set_event_employee, only: [:show, :edit, :update, :destroy]

  # GET /event_employees
  # GET /event_employees.json
  def index
    @event_employees = EventEmployee.all
  end

  # GET /event_employees/1
  # GET /event_employees/1.json
  def show
  end

  # GET /event_employees/new
  def new
    @event_employee = EventEmployee.new
  end

  # GET /event_employees/1/edit
  def edit
  end

  # POST /event_employees
  # POST /event_employees.json
  def create
    @event_employee = EventEmployee.new(event_employee_params)

    respond_to do |format|
      if @event_employee.save
        format.html { redirect_to :back, notice: 'Event employee was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_employee }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_employees/1
  # PATCH/PUT /event_employees/1.json
  def update
    respond_to do |format|
      if @event_employee.update(event_employee_params)
        format.html { redirect_to :back, notice: 'Event employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_employees/1
  # DELETE /event_employees/1.json
  def destroy
    @event_employee.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_employee
      @event_employee = EventEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_employee_params
      params.require(:event_employee).permit(:event_id, :person_id, :position)
    end
end
