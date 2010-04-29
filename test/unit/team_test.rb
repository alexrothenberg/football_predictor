require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_helper.rb')

class TeamTest < ActiveSupport::TestCase
	test 'can save a team in the database' do
		team = Team.new(:name => 'Liverpool')
		team.save!
		team_from_database = Team.find(team.id)
		assert_equal team, team_from_database
	end
end
