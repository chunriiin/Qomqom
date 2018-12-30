require 'test_helper'

class FixCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get fix_comments_resources_url
    assert_response :success
  end

end
