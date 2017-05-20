class CreateGoals < ActiveRecord::Migration
  def change
	 	create_table :goals do |t|
			t.references :achievable, polymorphic: true, index: true
		
			t.timestamps
		end
  end
end
