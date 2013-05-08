class CreateLeanDashboardMetrics < ActiveRecord::Migration
  def change
    create_table :lean_dashboard_metrics do |t|
      t.string :description
      t.text :code
      t.references :hypothesis
      t.timestamps
    end
    add_index :lean_dashboard_metrics, :hypothesis_id
  end
end
