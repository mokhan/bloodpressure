require_dependency "bloodpressure/application_controller"

module Bloodpressure
  class HealthController < ApplicationController
    def show
      @hostname = Socket.gethostname
    end
  end
end
