class BoardCase

  attr_accessor :case_name, :content

  @@board_case_list = []

  def initialize(case_name)
    @case_name = case_name
    @content = ' '
    @@board_case_list << self
  end

  def fill_the_case(player_symbol)
    if @content == ' '
      @content = player_symbol
    else
      puts 'Tu ne peux pas jouer ce coup.'
    end
  end

  def self.all_board_list
    @@board_case_list
  end

end

