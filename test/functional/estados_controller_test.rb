require 'test_helper'

class EstadosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado" do
    assert_difference('Estado.count') do
      post :create, :estado => { }
    end

    assert_redirected_to estado_path(assigns(:estado))
  end

  test "should show estado" do
    get :show, :id => estados(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => estados(:one).to_param
    assert_response :success
  end

  test "should update estado" do
    put :update, :id => estados(:one).to_param, :estado => { }
    assert_redirected_to estado_path(assigns(:estado))
  end

  test "should destroy estado" do
    assert_difference('Estado.count', -1) do
      delete :destroy, :id => estados(:one).to_param
    end

    assert_redirected_to estados_path
  end
end
