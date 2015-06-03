require 'test_helper'

class IlpsControllerTest < ActionController::TestCase
  setup do
    @ilp = ilps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ilps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ilp" do
    assert_difference('Ilp.count') do
      post :create, ilp: { finality: @ilp.finality, object: @ilp.object, scope: @ilp.scope, subject: @ilp.subject, title: @ilp.title, user_id: @ilp.user_id }
    end

    assert_redirected_to ilp_path(assigns(:ilp))
  end

  test "should show ilp" do
    get :show, id: @ilp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ilp
    assert_response :success
  end

  test "should update ilp" do
    patch :update, id: @ilp, ilp: { finality: @ilp.finality, object: @ilp.object, scope: @ilp.scope, subject: @ilp.subject, title: @ilp.title, user_id: @ilp.user_id }
    assert_redirected_to ilp_path(assigns(:ilp))
  end

  test "should destroy ilp" do
    assert_difference('Ilp.count', -1) do
      delete :destroy, id: @ilp
    end

    assert_redirected_to ilps_path
  end
end
