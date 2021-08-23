class Team

     def teamName
          @teamName
     end

     def teamName=( name )
          @teamName = name
     end

     def teamGoals
          @teamGoals
     end

     def teamGoals=( goals )
          @teamGoals += goals
     end
     
     def teamPoints
          @teamPoints
     end

     def teamPoints=( points )
          @teamPoints += points
     end

     def initialize()
          @teamPoints = 0
          @teamGoals = 0
     end

end
