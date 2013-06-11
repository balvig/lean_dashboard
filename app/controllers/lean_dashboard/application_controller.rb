module LeanDashboard
  class ApplicationController < ::ApplicationController
    before_filter :authenticate

    private

    def authenticate
      require_admin
    rescue
      raise 'Implement some sort of authentication by defining require_admin in ApplicationController'
    end
  end
end
