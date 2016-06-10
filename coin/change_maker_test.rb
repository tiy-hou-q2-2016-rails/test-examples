require 'minitest/autorun'
require './change_maker'

class ChangeMakerTest < MiniTest::Test

  def test_dollar_coin
    change_maker = ChangeMaker.new

    coins = change_maker.make_change(102)

    assert_equal coins, {pennies: 2, nickles: 0, dimes: 0, quarters: 0, dollars: 1}

  end

  def test_one_penny
    change_maker = ChangeMaker.new

    coins = change_maker.make_change(1)

    assert_equal coins, {pennies: 1, nickles: 0, dimes: 0, quarters: 0, dollars: 0}
  end

  def test_one_quarter
    change_maker = ChangeMaker.new

    coins = change_maker.make_change(25)

    assert_equal coins, {pennies: 0, nickles: 0, dimes: 0, quarters: 1, dollars: 0}
  end

  def test_4
    change_maker = ChangeMaker.new

    coins = change_maker.make_change(4)

    assert_equal coins, {pennies: 4, nickles: 0, dimes: 0, quarters: 0, dollars: 0}
  end

  def test_98
    change_maker = ChangeMaker.new

    coins = change_maker.make_change(98)

    assert_equal coins, {pennies: 3, nickles: 0, dimes: 2, quarters: 3, dollars: 0}
  end
end
