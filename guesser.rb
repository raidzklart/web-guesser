class Guesser
  attr_accessor :number, :guesses
  def initialize
    setup
  end

  def check_guess(guess)
    correct = false
    if guess > @number
      guess - 5 > @number ? message = "Way too high!" : message = "Too high!"
    elsif guess < @number
      guess + 5 < @number ? message = "Way too low!" : message = "Too low!"
    elsif guess == @number
      message = "You got it right! The SECRET NUMBER was #{@number}"
      setup
    end
    guess()
    message
  end

  private

  def guess
    if @guesses == 1
      setup
    end
    @guesses -= 1
  end
  def setup
    @guesses = 6
    @number = rand(100)
  end
end