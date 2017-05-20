class CreateResultGoals < ActiveRecord::Migration
  def change
  	create_table :result_goals do |t|
  		t.string :statement
  		t.string :value
  		t.boolean :is_compleate
  		
  		t.references :roadmaps
  	end
  end
end
