require 'test_helper'

module Bloodpressure
  class HealthControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get show" do
      get health_show_url
      assert_response :success
    end

  end
end
