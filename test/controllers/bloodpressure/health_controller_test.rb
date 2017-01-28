require 'test_helper'

module Bloodpressure
  class HealthControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @maintenance_file = Rails.root.join('tmp', 'maintenance')
    end

    teardown do
      File.unlink(@maintenance_file) if File.readable?(@maintenance_file)
    end

    test "returns the hostname" do
      get health_url
      assert_response :success
      assert_select "h1", Socket.gethostname
    end

    test "returns 404, when in maintenance mode" do
      FileUtils.touch(@maintenance_file)

      get health_url
      assert_response :not_found
      assert_select "h1", Socket.gethostname
    end
  end
end
