class Match

    WINNER = 3
    TIES = 1
    
    def initialize(team1, team2)
        @team1 = team1
        @team2 = team2
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
    
    def team1Goals=(goals)
        @team1Goals = goals
    end
    
    def team2Goals
        @team2Goals
    end
    
    def team2Goals=(goals)
        @team2Goals = goals
    end

    def matchPoints
        score = team1Goals <=> team2Goals
        puts score
        case score
            when 1 then @team1.addPoints(WINNER)
            when 0 then @team1.addPoints(TIES); @team2.addPoints(TIES)
            else @team2.addPoints(WINNER)
        end
    end
end
