require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get pages" do
    get :pages
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "help | #{@base_title}"
  end
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "about | #{@base_title}"
  end
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "contact | #{@base_title}"
  end


end
