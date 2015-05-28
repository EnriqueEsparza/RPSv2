class String


  rock = {"paper" => "false", "scissors" => "true", "rock" => "It's a tie!"}
  paper = {"scissors" => "false", "rock" => "true", "paper" => "It's a tie!"}
  scissors = {"rock" => "false", "paper" => "true", "scissors" => "It's a tie!"}

  define_method(:beats?) do |player_two|
    if self == "rock"
      rock.fetch(player_two)
    elsif self == "paper"
      paper.fetch(player_two)
    elsif self == "scissors"
      scissors.fetch(player_two)
    else
      "not a valid game piece"
    end

  end


end
