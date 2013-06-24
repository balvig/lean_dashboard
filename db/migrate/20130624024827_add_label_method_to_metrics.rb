class AddLabelMethodToMetrics < ActiveRecord::Migration
  def change
    add_column :lean_dashboard_metrics, :label_method, :string
  end
end
