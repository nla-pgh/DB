require 'test_helper'

class EnrollmentCoursesControllerTest < ActionController::TestCase
  setup do
    @enrollment_course = enrollment_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrollment_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrollment_course" do
    assert_difference('EnrollmentCourse.count') do
      post :create, enrollment_course: { novanet_courses_id: @enrollment_course.novanet_courses_id, program_enrollments_id: @enrollment_course.program_enrollments_id }
    end

    assert_redirected_to enrollment_course_path(assigns(:enrollment_course))
  end

  test "should show enrollment_course" do
    get :show, id: @enrollment_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrollment_course
    assert_response :success
  end

  test "should update enrollment_course" do
    patch :update, id: @enrollment_course, enrollment_course: { novanet_courses_id: @enrollment_course.novanet_courses_id, program_enrollments_id: @enrollment_course.program_enrollments_id }
    assert_redirected_to enrollment_course_path(assigns(:enrollment_course))
  end

  test "should destroy enrollment_course" do
    assert_difference('EnrollmentCourse.count', -1) do
      delete :destroy, id: @enrollment_course
    end

    assert_redirected_to enrollment_courses_path
  end
end
