class Game

  def initialize(hand1)
    @hand1 = hand1
    @hand2 = ['rock', 'paper', 'scissor'].sample
  end

  def play()
    string = "You played #{@hand1}, computer played #{@hand2}: "
    compwin = "computer wins!"
    playwin = "you win!"
    case @hand1
    when 'rock'
      if @hand2 == 'rock'
        return string + "draw!"
      elsif @hand2 == 'paper'
        return string + compwin
      elsif @hand2 == 'scissor'
        return string + playwin
      end
    when 'paper'
      if @hand2 == 'rock'
        return string + playwin
      elsif @hand2 == 'paper'
        return string + "draw!"
      elsif @hand2 == 'scissor'
        return string + compwin
      end
    when 'scissor'
      if @hand2 == 'rock'
        return string + compwin
      elsif @hand2 == 'paper'
        return string + playwin
      elsif @hand2 == 'scissor'
        return string + "draw!"
      end
    end
  end

end
