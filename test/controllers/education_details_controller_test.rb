require 'test_helper'

class EducationDetailsControllerTest < ActionController::TestCase
  setup do
    @education_detail = education_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education_detail" do
    assert_difference('EducationDetail.count') do
      post :create, education_detail: { institute: @education_detail.institute, name: @education_detail.name, passout_year: @education_detail.passout_year, score: @education_detail.score, user_id: @education_detail.user_id }
    end

    assert_redirected_to education_detail_path(assigns(:education_detail))
  end

  test "should show education_detail" do
    get :show, id: @education_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @education_detail
    assert_response :success
  end

  test "should update education_detail" do
    patch :update, id: @education_detail, education_detail: { institute: @education_detail.institute, name: @education_detail.name, passout_year: @education_detail.passout_year, score: @education_detail.score, user_id: @education_detail.user_id }
    assert_redirected_to education_detail_path(assigns(:education_detail))
  end

  test "should destroy education_detail" do
    assert_difference('EducationDetail.count', -1) do
      delete :destroy, id: @education_detail
    end

    assert_redirected_to education_details_path
  end
end
