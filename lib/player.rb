class Player

attr_accessor :player_name, :player_symbol

  def initialize(player_name, player_symbol)
    @player_name = player_name
    @player_symbol = player_symbol
    @check_list = ['a1','a2','a3','b1','b2','b3','c1','c2','c3','A1','A2','A3','B1','B2','B3','C1','C2','C3']
    
  end

  def change_symbol
    puts '>'
    input = gets.chomp
    if @check_list.include?(input)
    Board.all_brain_list.each {|element| 
      if element.case_name == input.upcase 
        if element.content == ' '
          element.content = @player_symbol
        else
          puts "La case est déjà occupée, merci d'en choisir une nouvelle."
          change_symbol()
        end
      end
    }
   else
    puts "La case demandée n'existe pas, merci d'en choisir une autre."
    change_symbol()
    end
    # MANQUE UNE SECURITE POUR LES INPUTS RANDOMS
  end
  

end