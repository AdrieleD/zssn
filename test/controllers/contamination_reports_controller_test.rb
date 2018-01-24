require 'test_helper'

class ContaminationReportsControllerTest < ActionController::TestCase
  setup do
    @contamination_report = contamination_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contamination_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contamination_report" do
    assert_difference('ContaminationReport.count') do
      post :create, contamination_report: { survivor_id: @contamination_report.survivor_id }
    end

    assert_redirected_to contamination_report_path(assigns(:contamination_report))
  end

  test "should show contamination_report" do
    get :show, id: @contamination_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contamination_report
    assert_response :success
  end

  test "should update contamination_report" do
    patch :update, id: @contamination_report, contamination_report: { survivor_id: @contamination_report.survivor_id }
    assert_redirected_to contamination_report_path(assigns(:contamination_report))
  end

  test "should destroy contamination_report" do
    assert_difference('ContaminationReport.count', -1) do
      delete :destroy, id: @contamination_report
    end

    assert_redirected_to contamination_reports_path
  end
end
