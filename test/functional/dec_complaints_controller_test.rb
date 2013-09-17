require 'test_helper'

class DecComplaintsControllerTest < ActionController::TestCase
  setup do
    @dec_complaint = dec_complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dec_complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dec_complaint" do
    assert_difference('DecComplaint.count') do
      post :create, dec_complaint: @dec_complaint.attributes
    end

    assert_redirected_to dec_complaint_path(assigns(:dec_complaint))
  end

  test "should show dec_complaint" do
    get :show, id: @dec_complaint.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dec_complaint.to_param
    assert_response :success
  end

  test "should update dec_complaint" do
    put :update, id: @dec_complaint.to_param, dec_complaint: @dec_complaint.attributes
    assert_redirected_to dec_complaint_path(assigns(:dec_complaint))
  end

  test "should destroy dec_complaint" do
    assert_difference('DecComplaint.count', -1) do
      delete :destroy, id: @dec_complaint.to_param
    end

    assert_redirected_to dec_complaints_path
  end
end
