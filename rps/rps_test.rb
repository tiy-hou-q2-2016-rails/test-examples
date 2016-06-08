require 'minitest/autorun'

require "minitest/reporters"
Minitest::Reporters.use!

require './rps'

class RpsTest < MiniTest::Test

  def test_auto_play
    delay
    rps = Rps.new
    rps.autoplay(100)
    assert_equal 100, rps.games_played
  end

  def test_auto_play_has_winners
    delay
    rps = Rps.new
    rps.autoplay(10)
    assert_equal 10, rps.winners.count
  end

  def test_auto_play_has_winners_and_stores_selected_play
    delay
    rps = Rps.new
    rps.autoplay(10)
    rps.winners.each do |winning_entry|
      allowable = [:rock, :paper, :scissors, :tie]
      assert allowable.include?(winning_entry), "Expected #{winning_entry} to be one of #{allowable.join(", ")}"
    end

  end


  def test_rock_should_beat_scissors
    delay
    # setup
    rps = Rps.new
    # playing the game
    player = rps.who_won(player_one: :rock, player_two: :scissors)
    # asserting what happened is what I expect
    # assert player == :player_one
    assert_equal :player_one, player
  end

  def test_rock_ties_rock
    delay
    rps = Rps.new
    player = rps.who_won(player_one: :rock, player_two: :rock)
    assert_equal :tie, player
  end

  def test_scissors_lose_to_rock
    delay
    rps = Rps.new
    # playing the game
    player = rps.who_won(player_one: :scissors, player_two: :rock)
    # asserting what happened is what I expect
    assert_equal :player_two, player
  end

  def test_paper_beats_rock
    delay
    rps = Rps.new
    # playing the game
    player = rps.who_won(player_one: :paper, player_two: :rock)
    # asserting what happened is what I expect
    assert_equal :player_one, player
  end
  def test_rock_loses_to_paper
    delay
    rps = Rps.new
    # playing the game
    player = rps.who_won(player_one: :rock, player_two: :paper)
    # asserting what happened is what I expect
    assert_equal :player_two, player
  end

  def test_scissors_beats_paper
    delay
    rps = Rps.new
    # playing the game
    player = rps.who_won(player_one: :scissors, player_two: :paper)
    # asserting what happened is what I expect
    assert_equal :player_one, player
  end
  def test_paper_loses_to_scissors
    delay
    rps = Rps.new
    # playing the game
    player = rps.who_won(player_one: :paper, player_two: :scissors)
    # asserting what happened is what I expect
    assert_equal :player_two, player
  end

  def delay
    sleep(rand() * (1..5).to_a.sample)
  end
end
