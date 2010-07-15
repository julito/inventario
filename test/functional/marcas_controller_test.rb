require 'test_helper'

class MarcasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marcas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marca" do
    assert_difference('Marca.count') do
      post :create, :marca => { }
    end

    assert_redirected_to marca_path(assigns(:marca))
  end

  test "should show marca" do
    get :show, :id => marcas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => marcas(:one).to_param
    assert_response :success
  end

  test "should update marca" do
    put :update, :id => marcas(:one).to_param, :marca => { }
    assert_redirected_to marca_path(assigns(:marca))
  end

  test "should destroy marca" do
    assert_difference('Marca.count', -1) do
      delete :destroy, :id => marcas(:one).to_param
    end

    assert_redirected_to marcas_path
  end
end
