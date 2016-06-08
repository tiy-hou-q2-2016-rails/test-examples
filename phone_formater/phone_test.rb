require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require './phone'

class PhoneTest < MiniTest::Test


  def test_formats_when_all_digits

    phone = Phone.new
    value = phone.format_the_number "5125555555"
    assert_equal "(512) 555-5555", value
  end

  def test_handles_bad_data

    phone = Phone.new
    value = phone.format_the_number "gkdhg"
    assert_equal "TRYAGAIN", value
  end

  def test_handles_bad_data

    phone = Phone.new
    value = phone.format_the_number "ABCABCABCD"
    assert_equal "TRYAGAIN", value
  end

end
