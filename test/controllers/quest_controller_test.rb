require "test_helper"

class QuestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quest_index_url
    assert_response :success
  end
end
