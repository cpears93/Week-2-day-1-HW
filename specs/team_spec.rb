require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TeamTest < MiniTest::Test

require_relative('../team')

def setup
  @team_patriots = Team.new("Patriots", ["Tom", "Julien"], "Bill")
end

  def test_team_has_name
    assert_equal("Patriots", @team_patriots.team_name)
  end

  def test_team_has_coach
    assert_equal("Bill", @team_patriots.coach_name)
  end

  def test_can_add_player
    @team_patriots.add_player("Tom")
    assert_equal(3, @team_patriots.players.size)
  end

  def test_has_player__player_exists
    is_player_there = @team_patriots.has_player("Tom")
    assert_equal(true, is_player_there)
  end

  def test_has_player__player_doesnt_exist
    is_player_there = @team_patriots.has_player("Vince")
    assert_equal(false, is_player_there)
  end
end
