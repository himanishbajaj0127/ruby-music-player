require "test_helper"

class MoodControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get mood_name:string_url
    assert_response :success
  end

  test "should get is_active:boolean" do
    get mood_is_active:boolean_url
    assert_response :success
  end
end
