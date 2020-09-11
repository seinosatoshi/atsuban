require 'test_helper'

class Users::YellsControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    get users_yells_create_url
    assert_response :success
  end

  test 'should get destroy' do
    get users_yells_destroy_url
    assert_response :success
  end
end
