require 'test_helper'

class AuditsControllerTest < ActionController::TestCase
  setup do
    @audit = audits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audit" do
    assert_difference('Audit.count') do
      post :create, :audit => @audit.attributes
    end

    assert_redirected_to audit_path(assigns(:audit))
  end

  test "should show audit" do
    get :show, :id => @audit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @audit.to_param
    assert_response :success
  end

  test "should update audit" do
    put :update, :id => @audit.to_param, :audit => @audit.attributes
    assert_redirected_to audit_path(assigns(:audit))
  end

  test "should destroy audit" do
    assert_difference('Audit.count', -1) do
      delete :destroy, :id => @audit.to_param
    end

    assert_redirected_to audits_path
  end
end
