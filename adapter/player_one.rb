class PlayerOne
  attr_reader :points, :full_name

  def initialize
    @points = rand(0..50)
    @full_name = 'Kyrie Irving'
  end
end
