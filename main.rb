require 'tournament'

teamA = Tournament::Team.new("Colombia")
teamB = Tournament::Team.new("Argentina")
teamC = Tournament::Team.new("Mexico")
teamD = Tournament::Team.new("USA")

match1 = Tournament::Match.new(teamA, 3, teamB, 1)
match2 = Tournament::Match.new(teamC, 0, teamD, 0)
match3 = Tournament::Match.new(teamA, 1, teamC, 1)
match4 = Tournament::Match.new(teamB, 2, teamD, 3)
match5 = Tournament::Match.new(teamA, 2,  teamD, 1)

matches = [match1, match2, match3, match4, match5]

teams = [teamA, teamB, teamC, teamD]

tournament = Tournament::Tournament.new(teams, matches)
