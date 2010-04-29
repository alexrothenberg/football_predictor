class AddGames < ActiveRecord::Migration
  def self.up
  	create_table :games do |t|
  		t.string :home_team
  		t.string :away_team
  		t.integer :home_score
  		t.integer :away_score
  	end
  end

  def self.down
  	drop_table :games
  end
end
