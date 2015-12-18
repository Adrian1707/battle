class Player
    attr_reader :name
    attr_accessor :hp

    DEFAULT_HEALTH = 60
    DEFAULT_HIT = 10

  def initialize(name, hp=DEFAULT_HEALTH)
    @name = name
    @hp = hp
  end

  def reduce_heath
    @hp-=DEFAULT_HIT
  end


end
