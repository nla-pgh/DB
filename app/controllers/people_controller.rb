class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
 
  def search
    roles_where_string = String.new
    general_info_string = String.new
    student_info_string = String.new
    a = Person.joins(:roles)
# -------------------------------------------------------
    if(params[:is_student] == "true") then roles_where_string << 'roles.name = "student" OR ' end
    if(params[:is_employee] == "true") then roles_where_string << 'roles.name = "employee" OR ' end
    if(params[:is_volunteer] == "true") then roles_where_string << 'roles.name = "volunteer" OR ' end
    if(params[:is_other] == "true") then roles_where_string << 'roles.name = "other" OR ' end
# -------------------------------------------------------
    if(params[:first_name] != "") then general_info_string << 'people.first_name = "' + params[:first_name] + '" AND ' end
    if(params[:last_name] != "") then general_info_string << "people.last_name = '" + params[:last_name] + "' AND " end
    if(params[:gender] == 'Male') then general_info_string << "people.gender = true AND " end
    if(params[:gender] == 'Female') then general_info_string << "people.gender = false AND " end
    if(params[:race] != '') then general_info_string << "people.race = '" + params[:race] + "' AND " end
    if(params[:DOB_start] != "" && params[:DOB_end] != "") then general_info_string << "people.DOB between '" + params[:DOB_start] + "' AND '" + params[:DOB_end] + "' AND " end
    if(params[:zip_code] != "")
      a = a.joins(:addresses)
      general_info_string << "addresses.zip_code = '" + params[:zip_code] + "' AND " 
    end
# ---------------------------------------------------------
    if(params[:school] != "")
      a = a.joins(:schools)
      student_info_string << "schools.id = " + params[:school] + " AND "
    end
    if(params[:cohort] != "")
      a = a.joins(:schools)
      student_info_string << "schools.cohort = " + params[:cohort] + " AND "
    end
    if(params[:household_number_of_members] != "") then student_info_string << "people.household_number_of_members=" + params[:household_number_of_members] + " AND " end
    if(params[:school_lunch_program] != "") then student_info_string << "people.school_lunch_program= '" + params[:school_lunch_program] + "' AND " end
    if(params[:in_foster_care] == 'Yes') then student_info_string << "people.in_foster_care = true AND " end
    if(params[:in_foster_care] == 'No') then student_info_string << "people.in_foster_care = false AND " end
    if(params[:allergy] != "")
      a = a.joins(:alleries)
      student_info_string << "allergies.id = " + params[:allergy] + " AND "
    end
    if(params[:medication] != "")
      a = a.joins(:medications)
     student_info_string << "medications.id = " + params[:medication] + " AND "
    end
    if(params[:support_service] != "")
      a = a.joins(:support_services)
      student_info_string << "support_services.id = " + params[:support_service] + " AND "
    end


    if(roles_where_string == '')
      @people = Array.new
      @message = "No Types of People Were Selected"
    else
      roles_where_string = roles_where_string[0,roles_where_string.length - 4]
      general_info_string = general_info_string[0, general_info_string.length - 5]
      student_info_string = student_info_string[0, student_info_string.length - 5]
      a = a.where(roles_where_string)
      a = a.where(general_info_string)
      a = a.where(student_info_string)
      @people = a.load
    end

  end

  def new_person
    @type = params[:type]
    @person = Person.new
    @person.addresses.build
    @person.availabilities.build
    @person.emergency_contacts.build
    @person.person_allergies.build
    @person.person_medications.build
    @person.person_schools.build
    @person.person_supports.build
    @person.phone_numbers.build
  end
  # GET /people
  # GET /people.json
  def index
    @people = Person.all
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
    role = Role.where(:name => params[:type]).first
    personrole = PersonRole.new
    personrole.role_id = role.id

    respond_to do |format|
      if @person.save
        personrole.person_id = @person.id
        personrole.save
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
      params.require(:person).permit!
    end
end
