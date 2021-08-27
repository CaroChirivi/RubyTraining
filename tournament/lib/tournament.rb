require 'tournament/logging'
require 'tournament/match'
require 'tournament/team'

module Tournament
  class Tournament

      WINNER = 3
      TIES = 1
      LOSER = 0

      include Logging

      def matches
          @matches
      end
      
      def teams
          @teams
      end

      def team(name)
          team = Team.new(name)
          @teams << team
      end

      def match(team1, team1Goals, team2, team2Goals)
          match = Match.new(team1, team1Goals, team2, team2Goals)
          @matchs << match
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