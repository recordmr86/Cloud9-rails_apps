require 'test_helper'

class Articles3sControllerTest < ActionController::TestCase
  setup do
    @articles3 = articles3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articles3" do
    assert_difference('Articles3.count') do
      post :create, articles3: { description: @articles3.description, title: @articles3.title }
    end

    assert_redirected_to articles3_path(assigns(:articles3))
  end

  test "should show articles3" do
    get :show, id: @articles3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articles3
    assert_response :success
  end

  test "should update articles3" do
    patch :update, id: @articles3, articles3: { description: @articles3.description, title: @articles3.title }
    assert_redirected_to articles3_path(assigns(:articles3))
  end

  test "should destroy articles3" do
    assert_difference('Articles3.count', -1) do
      delete :destroy, id: @articles3
    end

    assert_redirected_to articles3s_path
  end
end
