class CreateRoadmaps < ActiveRecord::Migration
  def change
		create_table :roadmaps do |t|
			t.string :statement, null: false
			t.string :reason, null: false
			t.string :reward
      t.references :users

			t.timestamps 
		end
  end
end
