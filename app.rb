require_relative 'lib/app/board'
require_relative 'lib/app/boardCase'
require_relative 'lib/app/player'
require_relative 'lib/app/game'

text_end =" "*12+"partie terminer"

joue = true


while joue 
  game = Game.new
  position =true
  game.presentation
  i=0
  win = false
  while i <9 && win == false
    if position == true
      choix=game.play
      game.board.placement_pions(choix,game.player1.symbole)
      position= false
      win=game.board.win
    else
      choix=game.play
      game.board.placement_pions(choix,game.player2.symbole)
      position= true
      win=game.board.win

    end
    i+=1
  end
  game.board.plateau
  if position == false && win ==true
    puts " "*12+game.player1.name + " à gagner cette partie"
    game.player1.results+=1
    puts "#{game.player1.results} est votre nombre de points" 
  
  elsif    position == true && win ==true
    puts " "*12+game.player2.name+ " à gagner cette partie "
    game.player2.results+=1
    puts "#{game.player2.results}  est votre notre de points "
  end
  puts text_end.red 
  joue= game.rejouer
end
game.end

