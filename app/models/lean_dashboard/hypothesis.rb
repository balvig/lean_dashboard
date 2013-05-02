module LeanDashboard
  class Hypothesis < ActiveRecord::Base
    belongs_to :cohort, class_name: 'Metric'
    belongs_to :indicator, class_name: 'Metric'
  end
end
