class Game

  @@number_of_games = 0
  def initialize
    @my_board = Board.new
    
  end
  
  def start_first_game
    #player 1 init
    puts "Player 1 name ? "
    print ">"
    player_1_name = gets.chomp
    puts "#{player_1_name} choose a symbol : "
    print ">"
    player_1_symbol = gets.chomp
    @player_1 = Player.new(player_1_name,player_1_symbol)

    #player 2 init
    puts "Player 2 name ? "
    print ">"
    name_nok = true
    while name_nok do
    player_2_name = gets.chomp
    player_2_name == player_1_name ? (puts "Already taken by #{player_1_name}, choose another name"; print'>') : name_nok = false
    end
    puts "#{player_2_name} choose a symbol : "
    print ">"
    symbol_nok = true
    while symbol_nok do
      player_2_symbol = gets.chomp
      player_2_symbol == player_1_symbol ? (puts "Already taken by #{player_1_name}, choose another symbol"; print'>') : symbol_nok = false
    end
    @player_2 = Player.new(player_2_name, player_2_symbol)
  end
  

  def display_board
    @my_board.display_board
  end

  def player_play(player)
    player.change_symbol
  end
  
  def refresh_board
    system "clear"
    self.display_board
  end

  def who_begin
    turn = rand(0..1)
    if turn == 0
      puts "#{@player_1.player_name} will begin the game"
    else
      puts "#{@player_2.player_name} will begin the game"
    end
    return turn
  end


  def turn_play(turn)
    if turn == 0
      a = @player_1
      b = @player_2
    else
      a = @player_2
      b = @player_1
    end
    # player 1 play
    puts "#{a.player_name} a toi de jouer"
    player_play(a)
    self.refresh_board
    if self.is_winner(a) 
      return puts "#{a.player_name} gagne la partie."
    end
    if self.is_equal
            return puts"égalité parfaite"
    end
    
    # player 2 play
    puts "#{b.player_name} a toi de jouer"
    player_play(b)
    self.refresh_board
    if self.is_winner(b)
      return puts "#{b.player_name} gagne la partie."
    end
    if self.is_equal
      return "égalité parfaite"
    end
    turn_play(turn)
  end

  def is_winner(player)
    #lignes
    if Board.all_brain_list[0].content == player.player_symbol && Board.all_brain_list[1].content == player.player_symbol && Board.all_brain_list[2].content == player.player_symbol
    return true
    end
    if Board.all_brain_list[3].content == player.player_symbol && Board.all_brain_list[4].content == player.player_symbol && Board.all_brain_list[5].content == player.player_symbol
      return true
    end
    if Board.all_brain_list[6].content == player.player_symbol && Board.all_brain_list[7].content == player.player_symbol && Board.all_brain_list[8].content == player.player_symbol
      return true
    end
    # colonnes
    if Board.all_brain_list[0].content == player.player_symbol && Board.all_brain_list[3].content == player.player_symbol && Board.all_brain_list[6].content == player.player_symbol
      return true
    end
    if Board.all_brain_list[1].content == player.player_symbol && Board.all_brain_list[4].content == player.player_symbol && Board.all_brain_list[7].content == player.player_symbol
      return true
    end
    if Board.all_brain_list[2].content == player.player_symbol && Board.all_brain_list[5].content == player.player_symbol && Board.all_brain_list[8].content == player.player_symbol
      return true
    end
    #diagonales
    if Board.all_brain_list[0].content == player.player_symbol && Board.all_brain_list[4].content == player.player_symbol && Board.all_brain_list[8].content == player.player_symbol
      return true
    end
    if Board.all_brain_list[2].content == player.player_symbol && Board.all_brain_list[4].content == player.player_symbol && Board.all_brain_list[6].content == player.player_symbol
      return true
    end
  end
  
  def is_equal
    if Board.all_brain_list[0].content != ' ' && Board.all_brain_list[1].content != ' ' && Board.all_brain_list[2].content != ' ' && Board.all_brain_list[3].content != ' ' && Board.all_brain_list[4].content != ' ' && Board.all_brain_list[5].content != ' ' && Board.all_brain_list[6].content != ' ' && Board.all_brain_list[7].content != ' ' && Board.all_brain_list[8].content != ' '
      return true
    end
  end
  
  def next_game
    puts 'Do you want to play another game ?(y/n)'
    print '>'
    case gets.chomp
    when "y"
      return true
    when "n"
      return false
    else
      puts "This is not a valid input"
      next_game()
    end
  end

  def reset_game
    BoardCase.all_board_list.clear
    Board.all_brain_list.clear
    Board.start_board
    @@number_of_games += 1
  end

end