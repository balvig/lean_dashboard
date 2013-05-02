module LeanDashboard
  class Metric < ActiveRecord::Base
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
      else
        data.inspect
      end
    end

    def value
      results.size
    end

    def data
      begin
        hypothesis.instance_eval(code)
      rescue => e
        e
      end
    end

    private

    def hypothesis
      Hypothesis.new
    end
  end

end
