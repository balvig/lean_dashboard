module LeanDashboard
  class Result
    LABEL_DEFAULTS = %w[to_label display_name full_name name title username login value created_at to_s inspect]
    def initialize(record, label = nil)
      @record = label && record.respond_to?(label) ? record.send(label) : record
    end

    def inspect
      to_s
    end

    def to_s
      method = LABEL_DEFAULTS.find { |m| @record.respond_to?(m) }
      @record.send(method)
    end

  end
end
