class Bob

  def hey(message)
    if message.strip.empty?
      "Fine. Be that way!"
    elsif ((message == message.upcase) && !only_numbers?(message)) || shouting_numbers?(message)
      "Whoa, chill out!"
    elsif last_character_is?(message, "?")
      "Sure."
    else
      "Whatever."
    end
  end


  private

  def last_character_is?(message, character)
    message[-1] == character
  end

  def shouting_numbers?(message)
    only_numbers?(message) && last_character_is?(message, "!")
  end

  def only_numbers?(message)
    message.to_i != 0
  end

end
