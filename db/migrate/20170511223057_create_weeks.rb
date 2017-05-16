class CreateWeeks < ActiveRecord::Migration
  def change 
  	create_table :weeks do |t|
  		t.references :plan
  		t.timestamps
  	end
  end
end
