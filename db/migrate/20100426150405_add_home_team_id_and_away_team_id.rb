class AddHomeTeamIdAndAwayTeamId < ActiveRecord::Migration
  def self.up
 
  	add_column :games, :home_team_id, :integer
  	add_column :games, :away_team_id, :integer
  	
  	Game.all.each do |game|
  	  home_team = Team.find_or_create_by_name(game.home_team)
  	  away_team = Team.find_or_create_by_name(game.away_team)
  	  
  	  game.home_team_id = home_team.id
  	  game.away_team_id = away_team.id
  	  
  	  game.save
  	end
  	
  	remove_column :games, :home_team
  	remove_column :games, :away_team
  end

  def self.down
  	#DONT WORRY ABOUT THIS RIGHT NOW
  end
end
