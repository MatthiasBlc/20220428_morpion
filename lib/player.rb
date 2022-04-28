class Player

attr_accessor :player_name, :player_symbol

  def initialize(player_name, player_symbol)
    @player_name = player_name
    @player_symbol = player_symbol
    
  end

  def change_symbol
    puts '>'
    input = gets.chomp
    Board.all_brain_list.each {|element| 
      if element.case_name == input.upcase 
        if element.content == ' '
          element.content = @player_symbol
        else
          puts "La case est déjà occupée, merci d'en choisir une nouvelle"
          change_symbol()
        end
      end
    }
    # MANQUE UNE SECURITE POUR LES INPUTS RANDOMS
  end
  

end