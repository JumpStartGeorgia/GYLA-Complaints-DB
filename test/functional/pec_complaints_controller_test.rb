require 'test_helper'

class PecComplaintsControllerTest < ActionController::TestCase
  setup do
    @pec_complaint = pec_complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pec_complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pec_complaint" do
    assert_difference('PecComplaint.count') do
      post :create, pec_complaint: @pec_complaint.attributes
    end

    assert_redirected_to pec_complaint_path(assigns(:pec_complaint))
  end

  test "should show pec_complaint" do
    get :show, id: @pec_complaint.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pec_complaint.to_param
    assert_response :success
  end

  test "should update pec_complaint" do
    put :update, id: @pec_complaint.to_param, pec_complaint: @pec_complaint.attributes
    assert_redirected_to pec_complaint_path(assigns(:pec_complaint))
  end

  test "should destroy pec_complaint" do
    assert_difference('PecComplaint.count', -1) do
      delete :destroy, id: @pec_complaint.to_param
    end

    assert_redirected_to pec_complaints_path
  end
end
