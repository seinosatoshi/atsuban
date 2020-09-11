require 'test_helper'

class Users::SubscribesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get users_subscribes_index_url
    assert_response :success
  end
end
