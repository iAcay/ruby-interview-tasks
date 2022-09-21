class Team
  def initialize(*players)
    @players = players
  end

  def all_players
    @players.map(&:full_name)
  end

  def average_points
    points = @players.inject(0) { |points, player| points + player.points }
    points / @players.count.to_f
  end
end
