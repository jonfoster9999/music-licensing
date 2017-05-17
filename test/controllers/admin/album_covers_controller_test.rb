require 'test_helper'

class Admin::AlbumCoversControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_album_covers_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_album_covers_show_url
    assert_response :success
  end

end
