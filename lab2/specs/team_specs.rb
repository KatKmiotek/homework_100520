require('minitest/autorun')
require('minitest/reporters')
require_relative('../team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestTeam < MiniTest::Test

def test_team_name
  new_team = Team.new("Best Team", ["Anne", "Barry", "Martin"], "Arnold")
  assert_equal("Best Team", new_team.team_name)
end

def test_players
  new_team = Team.new("Best Team", ["Anne", "Barry", "Martin"], "Arnold")
  assert_equal(3, new_team.players.length)
end

def test_coach
  new_team = Team.new("Best Team", ["Anne", "Barry", "Martin"], "Arnold")
  assert_equal("Arnold", new_team.coach)
end

def test_set_coach
  new_team = Team.new("Best Team", ["Anne", "Barry", "Martin"],"Arnold")
  new_team.coach = ("Kat")
  assert_equal("Kat", new_team.coach)
end

def test_add_player
  new_team = Team.new("Best Team", ["Anne", "Barry", "Martin"],"Arnold")
  new_team.new_player("Bob")
  assert_equal( 4, new_team.players().length)
end

def test_find_player_by_name
new_team = Team.new("Best Team", ["Anne", "Barry", "Martin"], "Arnold")
#new_team.find_player_by_name("Anne")
assert_equal( true, new_team.find_player_by_name("Anne"))
end

def test_won_or_lost
  new_team = Team.new("Best Team", ["Anne", "Barry", "Martin"], "Arnold")
  assert_equal(10, new_team.won_or_lost(1))
end





end
