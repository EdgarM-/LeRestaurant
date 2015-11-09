require 'test_helper'

class EspectaculosControllerTest < ActionController::TestCase
  setup do
    @espectaculo = espectaculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:espectaculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create espectaculo" do
    assert_difference('Espectaculo.count') do
      post :create, espectaculo: { descripcion: @espectaculo.descripcion, fecha: @espectaculo.fecha, fin: @espectaculo.fin, inicio: @espectaculo.inicio, nombre: @espectaculo.nombre }
    end

    assert_redirected_to espectaculo_path(assigns(:espectaculo))
  end

  test "should show espectaculo" do
    get :show, id: @espectaculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @espectaculo
    assert_response :success
  end

  test "should update espectaculo" do
    patch :update, id: @espectaculo, espectaculo: { descripcion: @espectaculo.descripcion, fecha: @espectaculo.fecha, fin: @espectaculo.fin, inicio: @espectaculo.inicio, nombre: @espectaculo.nombre }
    assert_redirected_to espectaculo_path(assigns(:espectaculo))
  end

  test "should destroy espectaculo" do
    assert_difference('Espectaculo.count', -1) do
      delete :destroy, id: @espectaculo
    end

    assert_redirected_to espectaculos_path
  end
end
