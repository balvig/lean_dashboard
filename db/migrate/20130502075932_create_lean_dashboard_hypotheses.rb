class CreateLeanDashboardHypotheses < ActiveRecord::Migration
  def change
    create_table :lean_dashboard_hypotheses do |t|
      t.string :title
      t.text :description
      t.integer :goal
      t.datetime :starts_at
      t.datetime :ends_at
      t.timestamps
    end
  end
end
