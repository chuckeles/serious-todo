require "test_helper"

class StaticPagesControllerTest < ActionController::TestCase

  test "should get home" do
    get :home
    assert_response :success
  end

  test "home should have application title" do
    get :home
    assert_select "title", Rails.configuration.x.name
  end

end