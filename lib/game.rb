class Game

  def initialize(player1, player2)
    @player1, @player2 = player1, player2
  end

  def attack_player(num)
    num == 1 ? @player1.reduce_hp_by_10 : @player2.reduce_hp_by_10
  end

  def get_player_hp(num)
    num == 1 ? @player1.hp : @player2.hp
  end

  def get_player_name(num)
    num == 1 ? @player1.name : @player2.name
  end

end
