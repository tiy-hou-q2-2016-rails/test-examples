def oh_hai(greeting)

  if greeting.end_with? "!"
    return "STOP SHOUTING"
  end

  if greeting.upcase == greeting
    :shouting
  else
    :calm
  end
end

result = oh_hai "WHAT IS EVEN GOING ON I CANT even"
puts result
