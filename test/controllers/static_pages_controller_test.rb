require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Sample App"
  end

 # testest "should get root" do
 #    get FILL_IN
 #    assert_response FILL_IN
 #  end

  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "HELP|#{@base_title}"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "ABOUT|#{@base_title}"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "CONTACT|#{@base_title}"
  end

end
