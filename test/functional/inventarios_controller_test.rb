require 'test_helper'

class InventariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventario" do
    assert_difference('Inventario.count') do
      post :create, :inventario => { }
    end

    assert_redirected_to inventario_path(assigns(:inventario))
  end

  test "should show inventario" do
    get :show, :id => inventarios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => inventarios(:one).to_param
    assert_response :success
  end

  test "should update inventario" do
    put :update, :id => inventarios(:one).to_param, :inventario => { }
    assert_redirected_to inventario_path(assigns(:inventario))
  end

  test "should destroy inventario" do
    assert_difference('Inventario.count', -1) do
      delete :destroy, :id => inventarios(:one).to_param
    end

    assert_redirected_to inventarios_path
  end
end
