require 'test_helper'

module LeanDashboard
  class HypothesesControllerTest < ActionController::TestCase
    setup do
      @hypothesis = hypotheses(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:hypotheses)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create hypothesis" do
      assert_difference('Hypothesis.count') do
        post :create, hypothesis: { description: @hypothesis.description, ends_at: @hypothesis.ends_at, goal: @hypothesis.goal, starts_at: @hypothesis.starts_at, title: @hypothesis.title }
      end
  
      assert_redirected_to hypothesis_path(assigns(:hypothesis))
    end
  
    test "should show hypothesis" do
      get :show, id: @hypothesis
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @hypothesis
      assert_response :success
    end
  
    test "should update hypothesis" do
      put :update, id: @hypothesis, hypothesis: { description: @hypothesis.description, ends_at: @hypothesis.ends_at, goal: @hypothesis.goal, starts_at: @hypothesis.starts_at, title: @hypothesis.title }
      assert_redirected_to hypothesis_path(assigns(:hypothesis))
    end
  
    test "should destroy hypothesis" do
      assert_difference('Hypothesis.count', -1) do
        delete :destroy, id: @hypothesis
      end
  
      assert_redirected_to hypotheses_path
    end
  end
end
