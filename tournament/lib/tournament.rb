require 'tournament/logging'
require 'tournament/team'
require 'tournament/match'

module Tournament

    class Tournament

        include Logging

        WINNER = 3
        TIES = 1
        LOSER = 0

        def matches
            @matches
        end
        
        def teams
            @teams
        end

        def standingsTable
            log("Tournament - standingsTable")
            @teams.sort_by! {|team| -team.teamPoints}
            @teams.each{ |team| puts " #{team.teamName} #{team.teamPoints}" }
        end

        def winner
            log("Tournament - winner")
            @teams.first.teamName
        end

        def initialize(teams, matches)
            @teams = teams
            @matches = matches
            log("Tournament - constructor - create new object #{self}")
        end   

    end
end