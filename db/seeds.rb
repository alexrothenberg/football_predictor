# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Team.create(:name=>'Liverpool')
Team.create(:name=>'Arsenal')
Team.create(:name=>'Chelsea')

Game.create(:home_team=>'Liverpool',         :home_score=>0, :away_score=>2, :away_team=>'Arsenal')
Game.create(:home_team=>'Manchester United', :home_score=>0, :away_score=>2, :away_team=>'Chelsea')
Game.create(:home_team=>'Manchester City',   :home_score=>3, :away_score=>1, :away_team=>'Manchester United')
Game.create(:home_team=>'Arsenal',           :home_score=>1, :away_score=>0, :away_team=>'Liverpool')
Game.create(:home_team=>'Hull city',                                         :away_team=>'Stoke City')
Game.create(:home_team=>'Aston Villa',                                       :away_team=>'Liverpool')
