require 'test_helper'

class CecComplaintsControllerTest < ActionController::TestCase
  setup do
    @cec_complaint = cec_complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cec_complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cec_complaint" do
    assert_difference('CecComplaint.count') do
      post :create, cec_complaint: @cec_complaint.attributes
    end

    assert_redirected_to cec_complaint_path(assigns(:cec_complaint))
  end

  test "should show cec_complaint" do
    get :show, id: @cec_complaint.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cec_complaint.to_param
    assert_response :success
  end

  test "should update cec_complaint" do
    put :update, id: @cec_complaint.to_param, cec_complaint: @cec_complaint.attributes
    assert_redirected_to cec_complaint_path(assigns(:cec_complaint))
  end

  test "should destroy cec_complaint" do
    assert_difference('CecComplaint.count', -1) do
      delete :destroy, id: @cec_complaint.to_param
    end

    assert_redirected_to cec_complaints_path
  end
end
