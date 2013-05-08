module LeanDashboard
  class Metric < ActiveRecord::Base
    belongs_to :hypothesis
    validates :description, presence: true

    def results
      if data.respond_to?(:map)
        data.map do |record|
          if record.respond_to?(:name)
            record.send(:name)
          elsif record.respond_to?(:user)
            record.user.send(:name)
          else
            record.inspect
          end
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
      begin
        hypothesis.instance_eval(code)
      rescue => e
        e
      end
    end

  end

end
