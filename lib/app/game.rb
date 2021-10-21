require 'bundler'
Bundler.require
require_relative 'boardCase.rb'
require_relative 'board'

class Game
  attr_accessor :board,:player1,:player2
  def initialize
    @board =Board.new
   
  end
  def cool_text(string)
    string.chars.each do |c|
      sleep 0.02
      print c
    end
    puts
  end
  def presentation
      bienvenue= "Bienvenue dans le jeux du morpion"
      cool_text(bienvenue)
      speudo_joueur1 =  "joueur 1 choisit votre pseudo"
      cool_text( speudo_joueur1)
  
      joueur1 = gets.chomp
      signe_joueur1= "joueur 1 choisir votre signe x ou o "
      cool_text(signe_joueur1)
      joueur1signe=gets.chomp
      if joueur1signe =="o"
        joueur2signe = "x"
      else
        joueur2signe = "o"
      end
      speudo_joueur2= "joueur 2 choisit votre pseudo"
      cool_text(speudo_joueur2)
      joueur2 = gets.chomp
    
      @player1 = Player.new(joueur1,joueur1signe)
      @player2 = Player.new(joueur2,joueur2signe) 
  end

  def menu()
      reponse =false
      while reponse == false
       choix_case ="choisisez case "
       cool_text(choix_case)
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
  text_rejouer= "voulez vous rejouez o ou n "
  cool_text(text_rejouer)
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