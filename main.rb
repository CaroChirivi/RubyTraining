require 'tournament'

teamA = Tournament::Team.new("Colombia")
teamA = Tournament::Team.new("Colombia")
teamB = Tournament::Team.new("Argentina")
teamC = Tournament::Team.new("Mexico")
teamD = Tournament::Team.new("USA")     

match1 = Tournament::Match.new(teamA, 3, teamB, 1)
match2 = Tournament::Match.new(teamC, 0, teamD, 0)
match3 = Tournament::Match.new(teamA, 1, teamC, 1)
match4 = Tournament::Match.new(teamB, 2, teamD, 3)
match5 = Tournament::Match.new(teamA, 2,  teamD, 1)
match6 = Tournament::Match.new(teamB, 3, teamC, 1)

matches = [match1, match2, match3, match4, match5, match6]

teams = [teamA, teamB, teamC, teamD]

tournament = Tournament::Tournament.new(teams, matches)

puts <<DOC

            AMERICAN FUTBOL SOCCER TOURNAMENT 2021

TEAMS

DOC


tournament.teams.each { |team| puts " * #{team.teamName}"}


puts "\nMATCH RESULT"

tournament.matches.each{|match| puts "* #{match.team1.teamName} #{match.team1Goals} VS #{match.team2Goals} #{match.team2.teamName}"}

puts <<DOC

Final tournament standings table by points

Match winner #{Tournament::Tournament::WINNER} points
Match ties #{Tournament::Tournament::TIES} points
Match loser #{Tournament::Tournament::LOSER} points

DOC

tournament.standingsTable

puts "\n And THE WIIINNNNNER issssss #{tournament.winner} \n"