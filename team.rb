class Team

  attr_accessor :team_name, :coach_name, :players

  def initialize(team_name, players, coach_name)
    @team_name = team_name   
    @players = players
    @coach_name = coach_name
    @points = 0
  end

  def add_player(player)
    @players.push(player)
  end

  def has_player(player)
    return @players.include?(player)
  end

end
