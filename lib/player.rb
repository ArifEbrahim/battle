class Player
  attr_reader :name, :hp
 
  def initialize(name)
    @name = name
    @hp = 100
  end

  def reduce_hp_by_10
    @hp -= 10
  end
end
