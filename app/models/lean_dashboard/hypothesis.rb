module LeanDashboard
  class Hypothesis < ActiveRecord::Base
    has_many :metrics, order: 'id ASC'
    accepts_nested_attributes_for :metrics

    def cohort
      metrics.first
    end

    def indicator
      metrics.last
    end
  end
end
