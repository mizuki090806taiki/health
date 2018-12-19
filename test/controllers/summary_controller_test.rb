require 'test_helper'

class SummaryControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get summary_result_url
    assert_response :success
  end

end
