require 'test_helper'

class Admin::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_dashboard_index_url
    assert_response :success
  end

  test "should get status" do
    get admin_dashboard_status_url
    assert_response :success
  end

end
