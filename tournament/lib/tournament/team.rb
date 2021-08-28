module Tournament

     class Team

          include Logging

          def initialize(name)
               @teamName = name
               @points = 0
               log("Team - constructor create new object #{self}")
          end

          def teamName
               @teamName
          end
          
          def teamPoints
               @points
          end

          def addPoints( points )
               @points += points
               log("Team - addPoints - add points to Team #{points}", "perrito")
          end
     end
end
