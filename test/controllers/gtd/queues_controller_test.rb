require 'test_helper'

class Gtd::QueuesControllerTest < ActionController::TestCase
  setup do
    @gtd_queue = gtd_queues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gtd_queues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gtd_queue" do
    assert_difference('Gtd::Queue.count') do
      post :create, gtd_queue: {  }
    end

    assert_redirected_to gtd_queue_path(assigns(:gtd_queue))
  end

  test "should show gtd_queue" do
    get :show, id: @gtd_queue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gtd_queue
    assert_response :success
  end

  test "should update gtd_queue" do
    patch :update, id: @gtd_queue, gtd_queue: {  }
    assert_redirected_to gtd_queue_path(assigns(:gtd_queue))
  end

  test "should destroy gtd_queue" do
    assert_difference('Gtd::Queue.count', -1) do
      delete :destroy, id: @gtd_queue
    end

    assert_redirected_to gtd_queues_path
  end
end
