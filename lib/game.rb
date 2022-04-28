class Game

  def initialize
    @board_case_list = []
    @brain_case_list = []
    case_ = BoardCase.new(" ")
    case_.content = " "
    @board_case_list << case_
    case1 = BoardCase.new("1")
    case1.content = "1"
    @board_case_list << case1
    case2 = BoardCase.new("2")
    case2.content = "2"
    @board_case_list << case2
    case3 = BoardCase.new("3")
    case3.content = "3"
    @board_case_list << case3
    caseA = BoardCase.new("A")
    caseA.content = "A"
    @board_case_list << caseA
    @board_case_list << BoardCase.new("A1")
    @brain_case_list 
    @board_case_list << BoardCase.new("A2")
    @board_case_list << BoardCase.new("A3")
    caseB = BoardCase.new("B")
    caseB.content = "B"
    @board_case_list << caseB
    @board_case_list << BoardCase.new("B1") 
    @board_case_list << BoardCase.new("B2")
    @board_case_list << BoardCase.new("B3")
    caseC = BoardCase.new("C")
    caseC.content = "C"
    @board_case_list << caseC
    @board_case_list << BoardCase.new("C1")
    @board_case_list << BoardCase.new("C2")
    @board_case_list << BoardCase.new("C3")

    @my_board = Board.new(@board_case_list)
  end
  
  def display_board
    @my_board.display_board
  end



end