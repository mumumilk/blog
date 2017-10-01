require 'test_helper'

class TopissimoControllerTest < ActionDispatch::IntegrationTest
  test "should get rico" do
    get topissimo_rico_url
    assert_response :success
  end

end
