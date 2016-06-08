class Rps

  attr_reader :games_played, :winners

  def autoplay(number_of_times)
    @winners = []
    @games_played = 0
    number_of_times.times do

      choice_a = [:rock, :scissors, :paper].sample
      choice_b = [:rock, :scissors, :paper].sample

      winner = who_won(player_one: choice_a, player_two: choice_b)

      if winner == :player_one
        winners << choice_a
      elsif winner == :player_two
        winners << choice_b
      else
        winners << :tie
      end

      # play the game
      @games_played += 1
    end
  end

  def who_won(inputs)
    choice_a = inputs[:player_one]
    choice_b = inputs[:player_two]

    winning_hands = {
      scissors: :paper,
      paper: :rock,
      rock: :scissors
    }

    if choice_a == choice_b
      :tie
    elsif winning_hands[choice_a] == choice_b
      :player_one
    else
      :player_two
    end


    # if choice_a == :rock && choice_b == :scissors
    #   return :player_one
    # end
    # if choice_a == :scissors && choice_b == :rock
    #   return :player_two
    # end
    # if choice_a == :paper && choice_b == :rock
    #   return :player_one
    # end
    # if choice_a == :rock && choice_b == :paper
    #   return :player_two
    # end
    #
    # if choice_a == :paper && choice_b == :scissors
    #   return :player_two
    # end
    # if choice_a == :scissors && choice_b == :paper
    #   return :player_one
    # end


  end
end
