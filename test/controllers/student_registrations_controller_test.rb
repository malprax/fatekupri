require 'test_helper'

class StudentRegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get student_registrations_new_url
    assert_response :success
  end

  test "should get create" do
    get student_registrations_create_url
    assert_response :success
  end

  test "should get show" do
    get student_registrations_show_url
    assert_response :success
  end

end
