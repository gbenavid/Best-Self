class CreateDaysTasks < ActiveRecord::Migration
  def change
  	create_table :day_tasks do |t| 
  		t.references :days
  		t.references :tasks

  		t.timestamps
  	end
  end
end
