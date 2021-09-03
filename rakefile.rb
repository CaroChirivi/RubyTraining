require 'csv'
require 'tournament'

desc "Import Games Played from csv file"

  #task :createTeams do
  #    puts "creating teams"
  #    path = ENV.fetch("CSV_FILE") {
  #      File.join(File.dirname(__FILE__), %w[teams.csv])
  #    }
  #    CSV.foreach(path, headers: false, header_converters: :symbol) do |row|
  #      #User.create(row.to_hash)
  #      teams << Tournament::Team.new(row)
  #    end
  #end

  #task :createMatches =>["createTeams"] do
  task :createMatches do
    puts "creating matches"
    teams = []
    matches = []

    path = ENV.fetch("CSV_FILE") {
      File.join(File.dirname(__FILE__), %w[matches.csv])
    }

    CSV.foreach(path, headers: false, header_converters: :symbol) do |row|
      puts row
      teamA = createTeams(teams, row[0])
      teamB = createTeams(teams, row[2])

      match = Tournament::Match.new(teamA, row[1], teamB, row[3])
      matches << match
    end
    
    tournament = Tournament::Tournament.new(teams, matches)
    showFinalTable(tournament)

  end

  def createTeams(teams, teamName)
    team = teams.find { |t| t.teamName == teamName }
    if team then
      return team
    else
      newTeam = Tournament::Team.new(teamName)
      teams << newTeam
      return newTeam
    end
  end

  def showFinalTable(tournament)
    puts "AMERICAN FUTBOL SOCCER TOURNAMENT 2021\n"
    puts "TEAMS"


    tournament.teams.each { |team| puts " * #{team.teamName}"}


    puts "\nMATCH RESULT"

    tournament.matches.each{|match| puts "* #{match.team1.teamName} #{match.team1Goals} VS #{match.team2Goals} #{match.team2.teamName}"}

    puts "Final tournament standings table by points"

    puts "Match winner #{Tournament::Tournament::WINNER} points"
    puts "Match ties #{Tournament::Tournament::TIES} points"
    puts "Match loser #{Tournament::Tournament::LOSER} points"

    tournament.standingsTable

    puts "\n And THE WIIINNNNNER issssss #{tournament.winner} \n"
  end