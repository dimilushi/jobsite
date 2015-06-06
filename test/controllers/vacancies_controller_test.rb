require 'test_helper'

class VacanciesControllerTest < ActionController::TestCase
  setup do
    @vacancy = vacancies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacancies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacancy" do
    assert_difference('Vacancy.count') do
      post :create, vacancy: { category: @vacancy.category, city: @vacancy.city, photo: @vacancy.photo, postcode: @vacancy.postcode, salary: @vacancy.salary, salary_type: @vacancy.salary_type, schedule: @vacancy.schedule, status: @vacancy.status, text: @vacancy.text, title: @vacancy.title }
    end

    assert_redirected_to vacancy_path(assigns(:vacancy))
  end

  test "should show vacancy" do
    get :show, id: @vacancy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacancy
    assert_response :success
  end

  test "should update vacancy" do
    patch :update, id: @vacancy, vacancy: { category: @vacancy.category, city: @vacancy.city, photo: @vacancy.photo, postcode: @vacancy.postcode, salary: @vacancy.salary, salary_type: @vacancy.salary_type, schedule: @vacancy.schedule, status: @vacancy.status, text: @vacancy.text, title: @vacancy.title }
    assert_redirected_to vacancy_path(assigns(:vacancy))
  end

  test "should destroy vacancy" do
    assert_difference('Vacancy.count', -1) do
      delete :destroy, id: @vacancy
    end

    assert_redirected_to vacancies_path
  end
end
