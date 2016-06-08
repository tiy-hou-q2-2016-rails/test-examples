class Phone
  def format_the_number(phone_number_as_string)
    array = phone_number_as_string.chars
    return "TRYAGAIN" unless array.count == 10
    return "TRYAGAIN" unless all_ints?(phone_number_as_string)

    first_segment = array[0..2].join
    second_segment = array[3..5].join
    final = array[6..9].join

    return "(#{first_segment}) #{second_segment}-#{final}"
  end

  def all_ints?(string)
    string.to_i.to_s == string
  end
end
