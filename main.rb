require_relative 'questions.rb'
require_relative "Player.rb"

class UI  #this has been instantiated below!


  def initialize
    @players = []
    puts "Playa 1 enta nams pls"
    name1 = gets.chomp
    @players << Player.new(name1) 
    #first instance for first player to be called within
    #other class in other window
    puts "Player 2 enter your player name please and thanks"
    name2 = gets.chomp
    @players << Player.new(name2) 

    puts "Player, play on!"
  end

  def play!
    while @players.any? { |p| p.lives > 0 }
      #above used to be this !@players.any? { |p| p.lives == 0 } ------falseness no run! but instead we made it twue 
      @players.each do |player|
        correct_answer = generate_question(player) ###LOOK AT THIS NOW AND LATER and how it connects elsewhere
        answer = recieve_answer 
        if compare_q_a(answer,correct_answer)
          player.increase_points #notice that this calls METHOD in player.rb
          puts "You are correct, you have gained #{player.points} points!" #gets LIVES IT LIVES  
        else 
          player.remove_life
          puts "Nope, the answer is #{correct_answer}, you have lost a life, #{player.lives} lives remain"
        end
        puts "Do you want to see the points?"
        answer = gets.chomp.downcase
        if answer == "yes"  #check this later = vs == for truths
          puts "Player #{player.name}, you have #{player.points} points"
        end
      end
               

    end
  end
end

game = UI.new #this is instantiating the class above, yo
game.play!
