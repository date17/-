require 'test_helper'

class ItemcreatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get itemcreates_index_url
    assert_response :success
  end

  test "should get add" do
    get itemcreates_add_url
    assert_response :success
  end

  test "should get edit" do
    get itemcreates_edit_url
    assert_response :success
  end

  test "should get delete" do
    get itemcreates_delete_url
    assert_response :success
  end

end
