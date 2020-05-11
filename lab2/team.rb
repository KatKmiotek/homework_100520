

class Team
attr_accessor :team_name, :players, :coach
attr_writer :points

  def initialize(name, players, coach)
    @team_name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def new_player(new)
    @players.push(new)
  end

def find_player_by_name(name)
  @players.include?(name)? true : false
end


def won_or_lost(result)
  won = result > 0
  lost = result == 0
  if won
    return @points += 10
  elsif lost
    return @points += 1
  end
end




# def team_name
#   @team_name
# end
#
# def players
#   @players
# end
#
# def coach
#   @coach
# end
#
# def set_coach(new_name)
#     @coach = new_name
# end

end
