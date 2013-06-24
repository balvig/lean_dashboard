module LeanDashboard
  class Metric < ActiveRecord::Base
    belongs_to :hypothesis
    validates :description, presence: true

    def results
      if data.respond_to?(:map)
        data.map { |record| Result.new(record, label_method) }
      end
    end

    def debug
      (results || data).to_s
    end

    def value
      results ? results.size : '-'
    end

    def data
      @data ||= hypothesis.instance_eval(code).to_a
      rescue => e
        e
    end

  end

end
