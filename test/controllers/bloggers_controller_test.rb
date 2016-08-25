require 'test_helper'

class BloggersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bloggers_index_url
    assert_response :success
  end

  test "should get show" do
    get bloggers_show_url
    assert_response :success
  end

  test "should get new" do
    get bloggers_new_url
    assert_response :success
  end

  test "should get edit" do
    get bloggers_edit_url
    assert_response :success
  end

end
