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

    def result
        result = []
        for team in @teams
            result.push(team.teamPoints)
        end
        return result
    end

end