require 'test_helper'

class JobseekersControllerTest < ActionController::TestCase
  setup do
    @jobseeker = jobseekers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobseekers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobseeker" do
    assert_difference('Jobseeker.count') do
      post :create, jobseeker: { address: @jobseeker.address, business_name: @jobseeker.business_name, city: @jobseeker.city, cv: @jobseeker.cv, email: @jobseeker.email, experience: @jobseeker.experience, personal_name: @jobseeker.personal_name, phone: @jobseeker.phone, photo: @jobseeker.photo, postcode: @jobseeker.postcode, status: @jobseeker.status, text: @jobseeker.text, website: @jobseeker.website }
    end

    assert_redirected_to jobseeker_path(assigns(:jobseeker))
  end

  test "should show jobseeker" do
    get :show, id: @jobseeker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobseeker
    assert_response :success
  end

  test "should update jobseeker" do
    patch :update, id: @jobseeker, jobseeker: { address: @jobseeker.address, business_name: @jobseeker.business_name, city: @jobseeker.city, cv: @jobseeker.cv, email: @jobseeker.email, experience: @jobseeker.experience, personal_name: @jobseeker.personal_name, phone: @jobseeker.phone, photo: @jobseeker.photo, postcode: @jobseeker.postcode, status: @jobseeker.status, text: @jobseeker.text, website: @jobseeker.website }
    assert_redirected_to jobseeker_path(assigns(:jobseeker))
  end

  test "should destroy jobseeker" do
    assert_difference('Jobseeker.count', -1) do
      delete :destroy, id: @jobseeker
    end

    assert_redirected_to jobseekers_path
  end
end
