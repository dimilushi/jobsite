require 'test_helper'

class EmployersControllerTest < ActionController::TestCase
  setup do
    @employer = employers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employer" do
    assert_difference('Employer.count') do
      post :create, employer: { address: @employer.address, business_name: @employer.business_name, city: @employer.city, email: @employer.email, logo: @employer.logo, personal_name: @employer.personal_name, phone: @employer.phone, postcode: @employer.postcode, status: @employer.status, text: @employer.text, website: @employer.website }
    end

    assert_redirected_to employer_path(assigns(:employer))
  end

  test "should show employer" do
    get :show, id: @employer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employer
    assert_response :success
  end

  test "should update employer" do
    patch :update, id: @employer, employer: { address: @employer.address, business_name: @employer.business_name, city: @employer.city, email: @employer.email, logo: @employer.logo, personal_name: @employer.personal_name, phone: @employer.phone, postcode: @employer.postcode, status: @employer.status, text: @employer.text, website: @employer.website }
    assert_redirected_to employer_path(assigns(:employer))
  end

  test "should destroy employer" do
    assert_difference('Employer.count', -1) do
      delete :destroy, id: @employer
    end

    assert_redirected_to employers_path
  end
end
