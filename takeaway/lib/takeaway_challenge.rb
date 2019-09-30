class Restaurant

  attr_reader :menu, :dishes, :price, :quantity,

  def initialize
    @quantity = 0
    @dishes = []
    @price = []
    @menu = {
       'chicken_and_rice' => 7.00,
       'shepherds_pie' => 5.00,
       'lasagne' => 6.50
    }
  end

  def see_menu
    @menu
  end

  def select_order(dish, quantity)
    selection = (@menu[dish]*quantity)
    @dishes << selection
  end


  def checkout
    @bill <<
    @price << @dishes.sum
    total = '%.2f' % @price
    return "Your total bill is" + " " + "£" + total.to_s
  end

end
