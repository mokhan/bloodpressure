require 'test_helper'

module Bloodpressure
  class HealthControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "returns the hostname" do
      get health_url
      assert_response :success
      assert_select "h1", Socket.gethostname
    end
  end
end
