# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

liverpool   = Team.find_or_create_by_name('Liverpool')
arsenal     = Team.find_or_create_by_name('Arsenal')
chelsea     = Team.find_or_create_by_name('Chelsea')
aston_villa = Team.find_or_create_by_name('Aston Villa')
hull_city   = Team.find_or_create_by_name('Hull City')
man_u       = Team.find_or_create_by_name('Manchester United')

Game.delete_all
Game.create(:home_team=>liverpool,   :home_score=>0, :away_score=>2, :away_team=> arsenal)
Game.create(:home_team=>man_u,       :home_score=>0, :away_score=>2, :away_team=>chelsea)
Game.create(:home_team=>hull_city,   :home_score=>3, :away_score=>1, :away_team=>man_u)
Game.create(:home_team=>arsenal,     :home_score=>1, :away_score=>0, :away_team=>liverpool)
Game.create(:home_team=>arsenal,     :home_score=>3, :away_score=>0, :away_team=>man_u)
Game.create(:home_team=>hull_city,                                   :away_team=>aston_villa)
Game.create(:home_team=>aston_villa,                                 :away_team=>liverpool)
Game.create(:home_team=>aston_villa,                                 :away_team=>arsenal)