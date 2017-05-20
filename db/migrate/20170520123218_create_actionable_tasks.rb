class CreateActionableTasks < ActiveRecord::Migration
  def change
  	create_table :actionable_tasks do |t|
  		t.string :description

  		t.references :progress_goal
  	end
  end
end
