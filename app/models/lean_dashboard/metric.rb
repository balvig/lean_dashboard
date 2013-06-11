module LeanDashboard
  class Metric < ActiveRecord::Base
    LABEL_METHODS = %w[to_label display_name full_name name title username login value inspect]
    belongs_to :hypothesis
    validates :description, presence: true

    def results
      if data.respond_to?(:map)
        data.map do |record|
          record = record.user if record.respond_to?(:user)
          label_method = LABEL_METHODS.find { |m| record.respond_to?(m) }
          record.send(label_method)
        end
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
