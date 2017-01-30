require_dependency "bloodpressure/application_controller"

module Bloodpressure
  class HealthController < ApplicationController
    def show
      @hostname = Socket.gethostname
      render layout: nil, status: http_status
    end

    private

    def http_status
      File.readable?(maintenance_file) ? :not_found : :ok
    end

    def maintenance_file
      Rails.root.join('tmp', 'maintenance')
    end
  end
end
