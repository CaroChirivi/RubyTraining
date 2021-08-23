class Team

     def initialize(name)
          @teamName = name
          @points = 0
     end

     def teamName
          @teamName
     end

     def teamName=( name )
          @teamName = name
     end
     
     def teamPoints
          @points
     end

     def addPoints( points )
          @points += points
     end
end
