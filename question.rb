class Question
  attr_accessor :answer

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer  = @num1 + @num2
  end

  def output (id)
    puts "Player #{id}: What is #{@num1} + #{@num2}?"
    print ">"
  end

  def correct_answer(input)
  input == @answer
  end

end
