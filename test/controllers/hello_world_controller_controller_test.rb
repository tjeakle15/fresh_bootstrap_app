require 'test_helper'

class HelloWorldControllerControllerTest < ActionController::TestCase
  test "should get say_hi" do
    get :say_hi
    assert_response :success
  end

end
