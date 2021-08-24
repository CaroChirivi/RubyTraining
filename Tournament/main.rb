require './Team'
require './Match'
require './Tournament'

teamA = Team.new("Colombia")
teamB = Team.new("Argentina")
teamC = Team.new("Mexico")
teamD = Team.new("USA")     

match1 = Match.new(teamA, 3, teamB, 1)
match2 = Match.new(teamC, 0, teamD, 0)
match3 = Match.new(teamA, 1, teamC, 1)
match4 = Match.new(teamB, 2, teamD, 3)
match5 = Match.new(teamA, 2,  teamD, 1)
match6 = Match.new(teamB, 3, teamC, 1)

matches = [match1, match2, match3, match4, match5, match6]

teams = [teamA, teamB, teamC, teamD]

tournament = Tournament.new(teams, matches)

puts <<DOC

            AMERICAN FUTBOL SOCCER TOURNAMENT 2021

TEAMS

DOC


tournament.teams.each { |team| puts " * #{team.teamName}"}


puts "\nMATCH RESULT"

tournament.matches.each{|match| puts "* #{match.team1.teamName} #{match.team1Goals} VS #{match.team2Goals} #{match.team2.teamName}"}

puts <<DOC

Final tournament standings table by points

Match winner #{Tournament::WINNER} points
Match ties #{Tournament::TIES} points
Match loser #{Tournament::LOSER} points

DOC

tournament.teams.sort_by! {|team| -team.teamPoints}
tournament.teams.each{ |team| puts " #{team.teamName} #{team.teamPoints}" }

puts "\n And THE WIIINNNNNER issssss #{tournament.teams.first.teamName} \n"