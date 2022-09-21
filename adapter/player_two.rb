class PlayerTwo
  attr_reader :first_name, :last_name

  def initialize
    @points = rand(0..50)
    @first_name = 'Lebron'
    @last_name = 'James'
  end

  def get_points
    @points
  end
end
