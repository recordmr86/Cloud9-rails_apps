require 'test_helper'

class Articles2sControllerTest < ActionController::TestCase
  setup do
    @articles2 = articles2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articles2" do
    assert_difference('Articles2.count') do
      post :create, articles2: {  }
    end

    assert_redirected_to articles2_path(assigns(:articles2))
  end

  test "should show articles2" do
    get :show, id: @articles2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articles2
    assert_response :success
  end

  test "should update articles2" do
    patch :update, id: @articles2, articles2: {  }
    assert_redirected_to articles2_path(assigns(:articles2))
  end

  test "should destroy articles2" do
    assert_difference('Articles2.count', -1) do
      delete :destroy, id: @articles2
    end

    assert_redirected_to articles2s_path
  end
end
