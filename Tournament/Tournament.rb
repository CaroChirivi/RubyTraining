require './Team'
require './Match'

teamA = Team.new()
teamA.teamName = "Colombia"     
teamB = Team.new()
teamB.teamName = "Argentina"     
teamC = Team.new()
teamC.teamName = "Mexico"     
teamD = Team.new()
teamD.teamName = "USA"     

puts teamA.teamName
puts teamB.teamName
puts teamC.teamName
puts teamD.teamName

match1 = Match.new()
match1.team1 = teamA
match1.team2 = teamB
match1.team1Goals = 3
match1.team2Goals = 1

match2 = Match.new()
match2.team1 = teamC
match2.team2 = teamD
match2.team1Goals = 0
match2.team2Goals = 0

match3 = Match.new()
match3.team1 = teamA
match3.team2 = teamC
match3.team1Goals = 1
match3.team2Goals = 1

match4 = Match.new()
match4.team1 = teamB
match4.team2 = teamD
match4.team1Goals = 2
match4.team2Goals = 3

match5 = Match.new()
match5.team1 = teamA
match5.team2 = teamD
match5.team1Goals = 2
match5.team2Goals = 1

match6 = Match.new()
match6.team1 = teamB
match6.team2 = teamC
match6.team1Goals = 3
match6.team2Goals = 1

puts match4.team1Goals
puts match4.team2Goals


matches = [match1, match2, match3, match4,match5, match6]

for match in matches
    match.matchPoints
end
  
