class Tournament

    WINNER = 3
    TIES = 1
    LOSER = 0

    def matches
        @matches
    end
    
    def teams
        @teams
    end

    def initialize(teams, matches)
        @teams = teams
        @matches = matches
    end   

end