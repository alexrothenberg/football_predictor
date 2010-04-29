class Game < ActiveRecord::Base
	belongs_to :home_team, :class_name=>'Team'
	belongs_to :away_team, :class_name=>'Team'

	default_scope :order => 'teams.name', :joins => :home_team
	
	named_scope :upcoming, :conditions => {:home_score => nil, :away_score => nil}
	
	def home_team_won?
		home_score > away_score unless upcoming?
	end

	def away_team_won?
		home_score < away_score unless upcoming?
	end
	
	def upcoming?
		home_score.nil? || away_score.nil?
	end
	
	#To see more about reading and writing csv files, see http://fastercsv.rubyforge.org/
	def self.convert_games_to_csv(games)
    require 'fastercsv' #<= This require statement really belongs at the top of the config/environment.rb file
	  csv = ['home team', 'away team', 'home scroe', 'away score'].to_csv
	  games.each do |game|
	    csv << [game.home_team.name, game.away_team.name, game.home_score, game.away_score].to_csv
    end
    csv
  end
  
end