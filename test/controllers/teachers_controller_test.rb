require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post :create, teacher: { birth: @teacher.birth, cep: @teacher.cep, city: @teacher.city, comp: @teacher.comp, cpf: @teacher.cpf, name: @teacher.name, neighborhood: @teacher.neighborhood, phone: @teacher.phone, sex: @teacher.sex, state: @teacher.state, street: @teacher.street }
    end

    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should show teacher" do
    get :show, id: @teacher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher
    assert_response :success
  end

  test "should update teacher" do
    patch :update, id: @teacher, teacher: { birth: @teacher.birth, cep: @teacher.cep, city: @teacher.city, comp: @teacher.comp, cpf: @teacher.cpf, name: @teacher.name, neighborhood: @teacher.neighborhood, phone: @teacher.phone, sex: @teacher.sex, state: @teacher.state, street: @teacher.street }
    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete :destroy, id: @teacher
    end

    assert_redirected_to teachers_path
  end
end
