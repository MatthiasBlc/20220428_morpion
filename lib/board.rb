class Board

  attr_accessor :board_case_list

  WIDTH = 9

  def initialize(board_case_list)
    @board_case_list = board_case_list
    
  end
  
  def display_row(line_mumber)
    horizontal_line =  "-" 
    gap_line = "|" + " ".rjust(WIDTH - 2," ")
    puts horizontal_line * (WIDTH * 4 - 3)
    puts gap_line * 4 + "|"
    str = ""
    [*0..3].each{|i| str << ("|" + " ".rjust(WIDTH/2-1," ") + @board_case_list[i + line_mumber * 4].content.ljust(WIDTH/2," ")) }
    puts str + "|"
    puts gap_line * 4 + "|"
  end

  def display_board
    [*0..3].each{|row_nbr| display_row(row_nbr)}
    puts "-" * (WIDTH * 4 - 3)
  end

end