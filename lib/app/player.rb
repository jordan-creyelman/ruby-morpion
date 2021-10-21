class Player 
  attr_accessor :name,:symbole,:results
  def initialize(name,symbole)
    @name = name
    @symbole = symbole
    @results = 0
  end
end