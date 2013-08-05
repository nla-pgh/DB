require 'test_helper'

class NovanetCoursesControllerTest < ActionController::TestCase
  setup do
    @novanet_course = novanet_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novanet_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novanet_course" do
    assert_difference('NovanetCourse.count') do
      post :create, novanet_course: { completed: @novanet_course.completed, name: @novanet_course.name, subject: @novanet_course.subject }
    end

    assert_redirected_to novanet_course_path(assigns(:novanet_course))
  end

  test "should show novanet_course" do
    get :show, id: @novanet_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @novanet_course
    assert_response :success
  end

  test "should update novanet_course" do
    patch :update, id: @novanet_course, novanet_course: { completed: @novanet_course.completed, name: @novanet_course.name, subject: @novanet_course.subject }
    assert_redirected_to novanet_course_path(assigns(:novanet_course))
  end

  test "should destroy novanet_course" do
    assert_difference('NovanetCourse.count', -1) do
      delete :destroy, id: @novanet_course
    end

    assert_redirected_to novanet_courses_path
  end
end
