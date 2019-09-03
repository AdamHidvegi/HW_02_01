require("minitest/autorun")
require("minitest/rg")
require_relative("../PartB.rb")

class TestTeam < MiniTest::Test

  def setup()
    @team = Team.new("CodeClan", [], "Colin", 0)
  end

  def test_team_name()
    @team.team_name()
    assert_equal("CodeClan", @team.team_name())
  end

  def test_get_players()
    @team.players()
    assert_equal([], @team.players())
  end

  def test_get_coach()
    @team.coach()
    assert_equal("Colin", @team.coach())
  end

  def test_get_points()
    @team.points()
    assert_equal(0, @team.points())
  end

  def test_set_coach()
    @team.coach = "Niall"
    assert_equal("Niall", @team.coach())
  end

  def test_set_player()
    @team.set_player "Adam"
    assert_equal(["Adam"], @team.players())
  end

  def test_check_player()
    @team.players = "Adam"
    result = @team.check_player("Adam")
    assert_equal(true, result)
  end

  def test_set_points__win()
    @team.set_points("win")
    assert_equal(1, @team.points())
  end

  def test_set_points__lose()
    @team.set_points("lose")
    assert_equal(0, @team.points())
  end


end
