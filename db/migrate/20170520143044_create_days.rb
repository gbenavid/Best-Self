class CreateDays < ActiveRecord::Migration
  def change
  	create_table :days do |t|
  		t.string :notes_ideas
  		t.string :daily_goal_affirmation
  		t.string :lessons_learned
  		t.string :wins
  		t.references :week

  		t.timestamps
  	end
  end
end
