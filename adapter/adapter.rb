class Adapter
  def initialize(player)
    @player = player
  end

  def full_name
    "#{@player.first_name} #{@player.last_name}"
  end

  def points
    @player.get_points
  end
end
