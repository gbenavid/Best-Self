class CreateTargetGoals < ActiveRecord::Migration
  def change
  	create_table :target_goals do |t|
  		t.string :statement

  		t.references :day
  		t.timestamps
  	end
  end
end
