require './game'
require './player'
require './question'

puts "Player 1, what is your name? "
player1 = Player.new(gets.chomp)
puts "Player 2, what is your name? "
player2 = Player.new(gets.chomp)

game = Game.new(player1, player2)

active_player = player1

loop do
  
  question = Question.new
  question.ask_question(active_player.name)
  answer = gets.chomp

  if question.right_answer?(answer) 
    puts "#{active_player.name}: Yes! You are Correct."
  else
    puts "#{active_player.name}, you are wrong! The right answer was #{question.answer}"
    active_player.decrease_lives
    if active_player.lives == 0
      active_player = (active_player == player1 ? player2 : player1)
      break
    end
  end
  game.display_score(player1, player2)

  active_player = (active_player == player1 ? player2 : player1)
  puts "----- NEW ROUND -----"

end
puts "#{active_player.name} wins with a score of #{active_player.lives}/3"
puts "----- GAME OVER -----"