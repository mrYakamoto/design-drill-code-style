class Guessing_game
  @@valid_numbers = (1..100).to_a # Store valid answers in an array
  attr_reader :solve, :answer
  def initialize (answer)
    @solved = false
    @answer = answer
# Validate input
  raise "Answer must be between 1 and 100" unless @@valid_numbers.include?(@answer)
  end

  def guess (number)
    if number == @answer # Check if the two are equal
      @solved = true
      :correct
    elsif (number > @answer) # Check if the guess is higher
      @solved = false
    return :high
    elsif(number < @answer) # Check if the guess is lower
      @solved = false
    :low
    end
  end

  def solved?
  @solved
  end
end
