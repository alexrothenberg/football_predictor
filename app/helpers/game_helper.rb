module GameHelper
	def friendly_team_name(team)
		return '' if team.nil?
		team.name
	end
	
	def winner_when(did_win)
		'winner' if did_win
	end
	
end

