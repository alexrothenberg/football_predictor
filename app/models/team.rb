class Team < ActiveRecord::Base
  default_scope :order => :name
  
	has_many :away_games, :class_name=>'Game', :foreign_key=>:away_team_id
	has_many :home_games, :class_name=>'Game', :foreign_key=>:home_team_id

  has_many :away_competitors, :class_name => 'Team', :through => :away_games, :source => :home_team, :conditions => 'home_score > away_score'
  has_many :home_competitors, :class_name => 'Team', :through => :home_games, :source => :away_team, :conditions => 'away_score > home_score'
	
	def all_competitors
	  (away_competitors + home_competitors).uniq
	end
	
end