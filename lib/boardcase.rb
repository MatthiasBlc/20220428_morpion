class BoardCase

  attr_accessor :name, :content

  def initialize(case_name)
    @name = case_name
    @content = ' '
  end

  def fill_the_case(player_symbol)
    if @content == ' '
      @content = player_symbol
    else
      puts 'Tu ne peux pas jouer ce coup.'
    end
  end
end