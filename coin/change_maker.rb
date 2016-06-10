class ChangeMaker



  def make_change(cents)

    dollars = cents / 100
    cents -= dollars * 100

    quarters = cents / 25
    cents -= quarters * 25

    dimes = cents / 10
    cents -= dimes * 10

    nickles = cents / 5
    cents -= nickles * 5

    pennies = cents / 1
    cents -= pennies * 1

    {
      pennies: pennies,
      nickles: nickles,
      dimes: dimes,
      quarters: quarters,
      dollars: dollars
    }


  end

  def make_change_complicated(amount)

    coins = [25, 10, 5, 2, 1]

    change_made = []

    while amount > 0
      # keep using the largest coin available
      coin = coins.find do |coin|
        amount >= coin
      end
      amount = amount - coin
      change_made << coin
    end

    return change_made
  end
end
