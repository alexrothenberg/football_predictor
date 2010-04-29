class Team < ActiveRecord::Base
	has_many :away_games, :class_name=>'Game', :foreign_key=>:away_team_id
	has_many :home_games, :class_name=>'Game', :foreign_key=>:home_team_id
	
	def all_competitors
		played_home_games = home_games.reject(&:upcoming?)
		played_away_games = away_games.reject(&:upcoming?)
		played_competitors = played_home_games.map(&:away_team) +
							 played_away_games.map(&:home_team)
		played_competitors.uniq.sort_by(&:name)
	end

 #played_away_games.map(&:home_team)
  #equivalent to
 #played_away_games.map{|game| game.home_team}

	
end
