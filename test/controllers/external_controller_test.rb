# frozen_string_literal: true

require 'test_helper'

# Assure that external pages load.
class ExternalControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get home_url
    assert_response :success
  end
end
