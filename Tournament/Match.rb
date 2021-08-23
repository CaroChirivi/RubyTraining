class Match
    
    @@winer = 3
    @@ties = 1
    
    def team1
        @team1
    end
    
    def team1=(team)
        @team1 = team
    end
    
    def team2
        @team2
    end
    
    def team2=(team)
        @team2 = team
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
            when 1 then @team1.teamPoints(@@winer)
            when 0 then @team1.teamPoints(@@ties); @team2.teamPoints(@@ties)
            else @team2.teamPoints(@@winer)
        end
    end
end
