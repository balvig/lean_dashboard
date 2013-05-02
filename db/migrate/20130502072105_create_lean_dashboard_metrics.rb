class CreateLeanDashboardMetrics < ActiveRecord::Migration
  def change
    create_table :lean_dashboard_metrics do |t|
      t.string :description
      t.text :code

      t.timestamps
    end
  end
end
