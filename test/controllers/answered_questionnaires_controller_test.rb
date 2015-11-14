require 'test_helper'

class AnsweredQuestionnairesControllerTest < ActionController::TestCase
  setup do
    @answered_questionnaire = answered_questionnaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answered_questionnaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answered_questionnaire" do
    assert_difference('AnsweredQuestionnaire.count') do
      post :create, answered_questionnaire: { conclusions: @answered_questionnaire.conclusions, profile: @answered_questionnaire.profile, questioned: @answered_questionnaire.questioned }
    end

    assert_redirected_to answered_questionnaire_path(assigns(:answered_questionnaire))
  end

  test "should show answered_questionnaire" do
    get :show, id: @answered_questionnaire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answered_questionnaire
    assert_response :success
  end

  test "should update answered_questionnaire" do
    patch :update, id: @answered_questionnaire, answered_questionnaire: { conclusions: @answered_questionnaire.conclusions, profile: @answered_questionnaire.profile, questioned: @answered_questionnaire.questioned }
    assert_redirected_to answered_questionnaire_path(assigns(:answered_questionnaire))
  end

  test "should destroy answered_questionnaire" do
    assert_difference('AnsweredQuestionnaire.count', -1) do
      delete :destroy, id: @answered_questionnaire
    end

    assert_redirected_to answered_questionnaires_path
  end
end
