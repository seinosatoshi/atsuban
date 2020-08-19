require 'test_helper'

class AudiosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get audios_create_url
    assert_response :success
  end

  test "should get destroy" do
    get audios_destroy_url
    assert_response :success
  end

end
