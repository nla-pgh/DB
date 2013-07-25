class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def new_person
    @type = params[:type]
    @person = Person.new
    @person_role = PersonRole.new
    @person_role.person_id = @person.id
    if @type == 'student'
      @person_role.role_id = 0
    elsif @type == 'employee'
      @person_role.role_id = 1
    elsif @type == 'volunteer'
      @person_role.role_id = 2  
    else @type == 'employee'
      @person_role.role_id = 3 
    end
  end
  # GET /people
  # GET /people.json
  def index
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @person }
      else
        format.html { render action: 'new' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:first_name, :last_name, :gender, :DOB, :race, :email, :parent_id, :household_number_of_members, :in_foster_care, :school_lunch_program, :clinic_name, :clinic_street_address, :clinic_city, :clinic_state, :clinic_zip_code, :clinic_phone_number, :position, :active)
    end
end
