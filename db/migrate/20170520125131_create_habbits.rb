class CreateHabbits < ActiveRecord::Migration
  def change
  	create_table :habbits do |t|
  		t.string :habbit
  		t.integer :target
  		t.integer :actual

  		t.references :roadmap
  	end
  end
end
