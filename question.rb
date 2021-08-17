class Question
    attr_accessor :answer
    OPERAND = ['+']
  
    def initialize()
      @number1 = rand(1..20)
      @number2 = rand(1..20)
      @operator = OPERAND[0]
      @answer = eval"#{@number1}#{@operator}#{@number2}"
    end
  
    def ask_question(name)
      puts "#{name}, what does #{@number1} plus #{@number2} equal?"
    end
  
    def right_answer?(answer)
      @answer.to_s == answer
    end
  end