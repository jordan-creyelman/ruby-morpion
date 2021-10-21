require 'bundler'
Bundler.require
require_relative 'boardCase.rb'
require_relative 'board'

class Game
  attr_accessor :board,:player1,:player2
  def initialize
    @board =Board.new
   
  end

  def presentation
      puts "Bienvenue dans le jeux du morpion"
      puts "joueur 1 choisit votre pseudo"
      joueur1 = gets.chomp
      puts "joueur 1 choisir votre signe x ou o "
      joueur1signe=gets.chomp
      if joueur1signe =="o"
        joueur2signe = "x"
      else
        joueur2signe = "o"
      end
      puts "joueur 2 choisit votre pseudo"
      joueur2 = gets.chomp
    
      @player1 = Player.new(joueur1,joueur1signe)
      @player2 = Player.new(joueur2,joueur2signe)
      
  end
  def menu()
      reponse =false
      while reponse == false
       puts "choisisez case "
       choix = gets.chomp.to_i-1
       if @board.array[choix] == " "
         return choix
       else 
          puts "erreur casse occuper"
       end
      end 
  end       
  def play
    @board.plateau()
    choix=menu()
  end
def rejouer
  puts "voulez vous rejouez o ou n "
  rejouer = gets.chomp.to_s
  if rejouer == "n"
    return false
  else
      return true
  end
end
  def end()
    if @player1.results > @player2.results
    puts "gagner à #{@player1.name}"
     
    elsif  @player1.results < @player2.results
    puts "gagner à #{@player2.name}"
    else
    puts "égalité entre #{@player1.name} et #{@player2.name}"
    end   
  end
end