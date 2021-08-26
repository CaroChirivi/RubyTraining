require './Tournament'
require './Logging'

class Match < Tournament

    include Logging
    
    def initialize(team1, goals1, team2, goals2)
        @team1 = team1
        @team2 = team2
        @team1Goals = goals1
        @team2Goals = goals2
        log("Match - constructor - create new object #{self}")
        matchPoints
    end    
    
    def team1
        @team1
    end
    
    def team2
        @team2
    end
    
    def team1Goals
        @team1Goals
    end
    
    def team2Goals
        @team2Goals
    end

    def matchPoints
        log("Match - matchPoints - set points to teams #{self}")
        score = team1Goals <=> team2Goals
        case score
            when 1 then @team1.addPoints(WINNER)
            when 0 then @team1.addPoints(TIES); @team2.addPoints(TIES)
            else @team2.addPoints(WINNER)
        end
    end
end
