require './player'
require './question'

class Game
    def initialize 
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @current_player = @player1
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  
  def play_game
    puts "Let's start !!"
    play = true
    while play == true do
        puts"---------------NEW TURN---------------"
        @game_question = Question.new
        @game_question.output(@current_player.id)
        @answer = gets.chomp.to_i
      
        if  @game_question.correct_answer(@answer)
          puts "Player #{@current_player.id}: YES! You are correct!"
        else 
          puts "Player #{@current_player.id}: Seriously? No!"
          @current_player.lose_life
      end
        if @current_player.lives > 0 
          puts "P1:#{@player1.lives}/3 vs P2:#{@player2.lives}/3"
          switch_player
        else 
          switch_player 
          play = false
          puts "Player #{@current_player.id}:  wins with a score of #{@current_player.lives}/3"
          puts "---------------GAME OVER--------------- \n Good bye !"
        end
      end 
    end
end 
