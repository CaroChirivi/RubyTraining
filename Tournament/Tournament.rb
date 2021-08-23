require './Team'
require './Match'

teamA = Team.new("Colombia")
teamB = Team.new("Argentina")
teamC = Team.new("Mexico")
teamD = Team.new("USA")     

match1 = Match.new(teamA, teamB)
match1.team1Goals = 3
match1.team2Goals = 1

match2 = Match.new(teamC, teamD)
match2.team1Goals = 0
match2.team2Goals = 0

match3 = Match.new(teamA, teamC)
match3.team1Goals = 1
match3.team2Goals = 1

match4 = Match.new(teamB, teamD)
match4.team1Goals = 2
match4.team2Goals = 3

match5 = Match.new(teamA, teamD)
match5.team1Goals = 2
match5.team2Goals = 1

match6 = Match.new(teamB, teamC)
match6.team1Goals = 3
match6.team2Goals = 1

matches = [match1, match2, match3, match4, match5, match6]

for match in matches
    match.matchPoints
end

teams = [teamA, teamB, teamC, teamD]

result = []
for team in teams
    result.push(team.teamPoints)
end

puts <<DOC

            AMERICAN FUTBOL SOCCER TOURNAMENT 2021

TEAMS

DOC

teams.each { |team| puts " * #{team.teamName}"}

puts "\nMATCH RESULT"

matches.each{|match| puts "* #{match.team1.teamName} #{match.team1Goals} VS #{match.team2Goals} #{match.team2.teamName}"}

puts <<DOC

Final tournament standings table by points

Match winner 3 points
Match Ties 1 points
Match loser no point

DOC

teams.sort_by! {|team| -team.teamPoints}
teams.each{ |team| puts " #{team.teamName} #{team.teamPoints}" }

puts "\n And THE WIIINNNNNER issssss #{teams.first.teamName} \n"