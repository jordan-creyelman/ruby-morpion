require 'bundler'
Bundler.require
require_relative 'boardCase.rb'
class Board
  attr_accessor :array
  
  def initialize
    boardcase = Boardcase.new
     @array = boardcase.case
   
  end
  
  def placement_pions(position,symbole)
    @array[position] =symbole 
 end
 def win 
     if @array[0]=="x"&&  @array[1]=="x"&& @array[2]=="x" || @array[0]=="o"&&  @array[1]=="o"&& @array[2]=="o"
      return true
     elsif @array[3]=="x"&&  @array[4]=="x"&& @array[5]=="x" || @array[3]=="o"&&  @array[4]=="o"&& @array[5]=="o"
        return true
      elsif @array[6]=="x"&&  @array[7]=="x"&& @array[8]=="x" || @array[6]=="o"&&  @array[7]=="o"&& @array[8]=="o"
        return true

      elsif @array[0]=="x"&&  @array[3]=="x"&& @array[6]=="x" || @array[0]=="o"&&  @array[3]=="o"&& @array[6]=="o"  
        return true  
      elsif @array[1]=="x"&&  @array[4]=="x"&& @array[7]=="x" || @array[1]=="o"&&  @array[4]=="o"&& @array[7]=="o"  
        return true 
      elsif @array[2]=="x"&&  @array[5]=="x"&& @array[8]=="x" || @array[2]=="o"&&  @array[5]=="o"&& @array[8]=="o"   
        return true    

      elsif @array[0]=="x"&&  @array[4]=="x"&& @array[8]=="x" || @array[0]=="o"&&  @array[4]=="o"&& @array[8]=="o"  
        return true 
      elsif @array[2]=="x"&&  @array[4]=="x"&& @array[6]=="x" || @array[2]=="o"&&  @array[4]=="o"&& @array[6]=="o"  
        return true 
      else 
          return false
     end
 end
  def plateau()
    puts "\n\n"
    puts ' ' * 10 + '-' * 19
    puts ' ' * 10 + ('|' + ' ' * 5) * 3 + '|'
    puts ' ' * 10 + "|  #{array[0]}  |  #{array[1]}  |  #{array[2]}  |"
    puts ' ' * 10 + ('|' + ' ' * 4 + '1') + ('|' + ' ' * 4 + '2') + ('|' + ' ' * 4 + '3') + '|'
    puts ' ' * 10 + '-' * 19
    puts ' ' * 10 + ('|' + ' ' * 5) * 3 + '|'
    puts ' ' * 10 + "|  #{array[3]}  |  #{array[4]}  |  #{array[5]}  |"
    puts ' ' * 10 + ('|' + ' ' * 4 + '4') + ('|' + ' ' * 4 + '5') + ('|' + ' ' * 4 + '6') + '|'
    puts ' ' * 10 + '-' * 19
    puts ' ' * 10 + ('|' + ' ' * 5) * 3 + '|'
    puts ' ' * 10 + "|  #{array[6]}  |  #{array[7]}  |  #{array[8]}  |"
    puts ' ' * 10 + ('|' + ' ' * 4 + '7') + ('|' + ' ' * 4 + '8') + ('|' + ' ' * 4 + '9') + '|'
    puts ' ' * 10 + '-' * 19
  end

end
 

