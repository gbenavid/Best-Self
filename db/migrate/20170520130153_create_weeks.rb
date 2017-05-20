class CreateWeeks < ActiveRecord::Migration
  def change
  	create_table :weeks do |t|
  		t.references :roadmap
  	end
  end
end
