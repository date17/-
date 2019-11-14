require 'test_helper'

class FamimainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get famimain_index_url
    assert_response :success
  end

  test "should get genre" do
    get famimain_genre_url
    assert_response :success
  end

  test "should get show" do
    get famimain_show_url
    assert_response :success
  end

end
