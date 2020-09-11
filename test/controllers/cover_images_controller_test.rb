require 'test_helper'

class CoverImagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    get cover_images_create_url
    assert_response :success
  end

  test 'should get destroy' do
    get cover_images_destroy_url
    assert_response :success
  end
end
