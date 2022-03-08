require "test_helper"

class IncidentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get incident_index_url
    assert_response :success
  end

  test "should get create" do
    get incident_create_url
    assert_response :success
  end

  test "should get new" do
    get incident_new_url
    assert_response :success
  end
end
