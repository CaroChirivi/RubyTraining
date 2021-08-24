class Tournament

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