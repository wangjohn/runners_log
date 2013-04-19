require 'test_helper'

class RunHistoriesControllerTest < ActionController::TestCase
  setup do
    @run_history = run_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:run_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create run_history" do
    assert_difference('RunHistory.count') do
      post :create, run_history: { avg_distance: @run_history.avg_distance, avg_duration: @run_history.avg_duration, user_id: @run_history.user_id }
    end

    assert_redirected_to run_history_path(assigns(:run_history))
  end

  test "should show run_history" do
    get :show, id: @run_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @run_history
    assert_response :success
  end

  test "should update run_history" do
    patch :update, id: @run_history, run_history: { avg_distance: @run_history.avg_distance, avg_duration: @run_history.avg_duration, user_id: @run_history.user_id }
    assert_redirected_to run_history_path(assigns(:run_history))
  end

  test "should destroy run_history" do
    assert_difference('RunHistory.count', -1) do
      delete :destroy, id: @run_history
    end

    assert_redirected_to run_histories_path
  end
end
