class CreateProgressGoals < ActiveRecord::Migration
  def change
  	create_table :progress_goals do |t|
  		t.string :measurable_step

  		t.references :result_goals
		end
  end
end
