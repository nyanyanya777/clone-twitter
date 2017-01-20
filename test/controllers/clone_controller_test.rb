require 'test_helper'

class CloneControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
