require 'test_helper'

class InfocreatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get infocreates_index_url
    assert_response :success
  end

  test "should get add" do
    get infocreates_add_url
    assert_response :success
  end

  test "should get edit" do
    get infocreates_edit_url
    assert_response :success
  end

  test "should get delete" do
    get infocreates_delete_url
    assert_response :success
  end

end
