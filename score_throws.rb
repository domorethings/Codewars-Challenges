#You've just recently been hired to calculate scores for a Dart Board game! 

#Scoring specifications:
#0 points - radius above 10
#5 points - radius between 5 and 10 inclusive
#10 points - radius less than 5

#If all radiuses are less than 5, award 100 BONUS POINTS!

#Write a function that accepts an array of radiuses (can be integers and/or floats), 
#and returns a total score using the above specification.
#An empty array should return 0.

#Examples:
#scoreThrows( [1, 5, 11] ) => returns 15 
#scoreThrows( [15, 20, 30] ) => returns 0 
#scoreThrows( [1, 2, 3, 4] ) => returns 140

def scoreThrows(radiuses)
    total_points = 0
  
    bonus_point = true
    radiuses.each do |radius|
      total_points += 0 if radius > 10
      total_points += 5 if radius >= 5 && radius <= 10
      total_points += 10 if radius < 5
      bonus_point = false if radius > 5
    end
    total_points += 100 if bonus_point && radiuses != []
    return total_points
  end