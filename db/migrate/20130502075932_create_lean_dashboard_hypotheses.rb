class CreateLeanDashboardHypotheses < ActiveRecord::Migration
  def change
    create_table :lean_dashboard_hypotheses do |t|
      t.string :title
      t.text :description
      t.integer :goal
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :cohort
      t.references :indicator

      t.timestamps
    end
    add_index :lean_dashboard_hypotheses, :cohort_id
    add_index :lean_dashboard_hypotheses, :indicator_id
  end
end
