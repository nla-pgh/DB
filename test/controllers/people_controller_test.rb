require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { DOB: @person.DOB, active: @person.active, clinic_city: @person.clinic_city, clinic_name: @person.clinic_name, clinic_phone_number: @person.clinic_phone_number, clinic_state: @person.clinic_state, clinic_street_address: @person.clinic_street_address, clinic_zip_code: @person.clinic_zip_code, email: @person.email, first_name: @person.first_name, gender: @person.gender, household_number_of_members: @person.household_number_of_members, in_foster_care: @person.in_foster_care, last_name: @person.last_name, parent_id: @person.parent_id, position: @person.position, race: @person.race, school_lunch_program: @person.school_lunch_program }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { DOB: @person.DOB, active: @person.active, clinic_city: @person.clinic_city, clinic_name: @person.clinic_name, clinic_phone_number: @person.clinic_phone_number, clinic_state: @person.clinic_state, clinic_street_address: @person.clinic_street_address, clinic_zip_code: @person.clinic_zip_code, email: @person.email, first_name: @person.first_name, gender: @person.gender, household_number_of_members: @person.household_number_of_members, in_foster_care: @person.in_foster_care, last_name: @person.last_name, parent_id: @person.parent_id, position: @person.position, race: @person.race, school_lunch_program: @person.school_lunch_program }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
