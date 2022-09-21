# We have two players with different interfaces.
# Player no. 1 uses interface:
#   { @points is an integer that represents the number of points a player has earned
#     @full_name is a string
#     .points attr_reader
#     .full_name attr_reader
#   }

# Player no. 2 uses interface:
#   { 
#     @points is an integer that represents the number of points a player has earned
#     @first_name is a string
#     @last_name is a string
#     .get_points method returns player's points
#     .first_name attr_reader
#     .last_name attr_reader
#   }
#
# We have class Team which has two methods:
#   .all_players -> returns array of all players' full name in Team
#   .average_points -> returns average of points earned by all Team's players
#
# Adapter class allows Team to use interfaces of both classes (PlayerOne and PlayerTwo)
# Adapter .points method calls get_points method from PlayerTwo class
# Adapter .full_name method concatenate @first_name and @last_name from PlayerTwo into one string
# Thus adapter guarantees that we do not have to tell Team how to work with PlayerTwo 

require_relative 'adapter'
require_relative 'team'
require_relative 'player_one'
require_relative 'player_two'

team = Team.new(PlayerOne.new, Adapter.new(PlayerTwo.new))
puts 'Team players:'
puts team.all_players
puts '---------------------------------------------------'
puts "Team points average: #{team.average_points}"
