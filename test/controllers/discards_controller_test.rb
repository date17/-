require 'test_helper'

class DiscardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get discards_index_url
    assert_response :success
  end

  test "should get add" do
    get discards_add_url
    assert_response :success
  end

  test "should get edit" do
    get discards_edit_url
    assert_response :success
  end

  test "should get delete" do
    get discards_delete_url
    assert_response :success
  end

end
