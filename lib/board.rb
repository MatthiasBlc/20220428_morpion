class Board

  attr_accessor :board_case_list, :brain_list

  @@brain_list = []

  WIDTH = 9
  def initialize
    Board.start_board()
  end
  
  def self.start_board
    case_0 = BoardCase.new(' ')
    case_0.content = " "
    case_1 = BoardCase.new("1")
    case_1.content = "1"
    case_2 = BoardCase.new("2")
    case_2.content = "2"
    case_3 = BoardCase.new("3")
    case_3.content = "3"
    case_a = BoardCase.new("A")
    case_a.content = "A"
    case_a1 = BoardCase.new("A1")
    @@brain_list << case_a1
    case_a2 = BoardCase.new("A2")
    @@brain_list << case_a2
    case_a3 = BoardCase.new("A3")
    @@brain_list << case_a3
    case_b = BoardCase.new("B")
    case_b.content = "B"
    case_b1 = BoardCase.new("B1")
    @@brain_list << case_b1
    case_b2 = BoardCase.new("B2")
    @@brain_list << case_b2
    case_b3 = BoardCase.new("B3")
    @@brain_list << case_b3
    case_c = BoardCase.new("C")
    case_c.content = "C"
    case_c1 = BoardCase.new("C1")
    @@brain_list << case_c1
    case_c2 = BoardCase.new("C2")
    @@brain_list << case_c2
    case_c3 = BoardCase.new("C3")
    @@brain_list << case_c3
  end

  def display_row(line_mumber)
    horizontal_line =  "-" 
    gap_line = "|" + " ".rjust(WIDTH - 2," ")
    puts horizontal_line * (WIDTH * 4 - 3)
    puts gap_line * 4 + "|"
    str = ""
    [*0..3].each{|i| str << ("|" + " ".rjust(WIDTH/2-1," ") + BoardCase.all_board_list[i + line_mumber * 4].content.ljust(WIDTH/2," ")) }
    puts str + "|"
    puts gap_line * 4 + "|"
  end

  def display_board
    [*0..3].each{|row_nbr| display_row(row_nbr)}
    puts "-" * (WIDTH * 4 - 3)
  end

  def self.all_brain_list
    @@brain_list
  end

end