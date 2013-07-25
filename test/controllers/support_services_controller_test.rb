require 'test_helper'

class SupportServicesControllerTest < ActionController::TestCase
  setup do
    @support_service = support_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:support_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create support_service" do
    assert_difference('SupportService.count') do
      post :create, support_service: { name: @support_service.name }
    end

    assert_redirected_to support_service_path(assigns(:support_service))
  end

  test "should show support_service" do
    get :show, id: @support_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @support_service
    assert_response :success
  end

  test "should update support_service" do
    patch :update, id: @support_service, support_service: { name: @support_service.name }
    assert_redirected_to support_service_path(assigns(:support_service))
  end

  test "should destroy support_service" do
    assert_difference('SupportService.count', -1) do
      delete :destroy, id: @support_service
    end

    assert_redirected_to support_services_path
  end
end
