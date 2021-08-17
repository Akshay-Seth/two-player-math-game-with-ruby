class Game

    attr_accessor :active
  
    def initialize(p1, p2)
      @player1 = p1
      @player2 = p2
      @active = @player1
    end
  
    def activePlayer?
      @active
    end
  
    def display_score(player1, player2)
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    end
  
  end