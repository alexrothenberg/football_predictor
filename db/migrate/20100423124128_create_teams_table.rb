class CreateTeamsTable < ActiveRecord::Migration
  def self.up
  	create_table :teams do |t|
  		t.string :name
  	end
  end

  def self.down
  	drop_table :teams
  end
end
