require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_helper.rb')

class GameTest < ActiveSupport::TestCase
	def setup
		@liverpool  = Team.create!(:name=>'Liverpool')
		@man_united = Team.create!(:name=>'Manchester United')
		@game = Game.new(:home_team => @liverpool,
		                 :away_team => @man_united,
		                 :home_score=> 60,
		                 :away_score=> 7)
	end

	test 'can save a game in the database' do
		@game.save!
		game_from_database = Game.find(@game.id)
		assert_equal @game, game_from_database
	end
	
	test 'knows when a game is upcoming' do
		@game.home_score = nil
		@game.away_score = nil
		assert_equal @game.upcoming?, true
	end

	test 'knows when a game is not upcoming because it has both scores' do
		@game.home_score = 1
		@game.away_score = 1
		assert_equal @game.upcoming?, false
	end

	test 'knows when a game is upcoming because it does not have a home score' do
		@game.home_score = nil
		@game.away_score = 1
		assert_equal @game.upcoming?, true
	end

	test 'knows when a game is not upcoming because it does not have an away score' do
		@game.home_score = 1
		@game.away_score = nil
		assert_equal @game.upcoming?, true
	end
	
	test 'knows when a home team is winner' do
		@game.home_score = 1
		@game.away_score = 0
		assert @game.home_team_won?
		assert !@game.away_team_won?
	end

	test 'knows when a away team is the winner' do
		@game.home_score = 0
		@game.away_score = 1
		assert !@game.home_team_won?
		assert @game.away_team_won?
	end

	test 'knows no team wins in a draw' do
		@game.home_score = 1
		@game.away_score = 1
		assert !@game.home_team_won?
		assert !@game.away_team_won?
	end
	
	test 'knows no team wins in an upcoming game' do
		@game.home_score = nil
		@game.away_score = nil
		assert !@game.home_team_won?
		assert !@game.away_team_won?
	end

	
end
