require 'test_helper'

class IteminfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get iteminfos_index_url
    assert_response :success
  end

  test "should get show" do
    get iteminfos_show_url
    assert_response :success
  end

  test "should get add" do
    get iteminfos_add_url
    assert_response :success
  end

  test "should get edit" do
    get iteminfos_edit_url
    assert_response :success
  end

  test "should get delete" do
    get iteminfos_delete_url
    assert_response :success
  end

end
