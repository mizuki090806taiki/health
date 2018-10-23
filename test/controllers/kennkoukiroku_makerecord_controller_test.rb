require 'test_helper'

class KennkoukirokuMakerecordControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kennkoukiroku_makerecord_new_url
    assert_response :success
  end

end
