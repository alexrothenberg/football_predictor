class Game < ActiveRecord::Base
	belongs_to :home_team, :class_name=>'Team'
	belongs_to :away_team, :class_name=>'Team'
	
	def home_team_won?
		home_score > away_score unless upcoming?
	end

	def away_team_won?
		home_score < away_score unless upcoming?
	end
	
	def upcoming?
		home_score.nil? || away_score.nil?
	end
	
	
		
end
