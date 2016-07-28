require 'pry'

class CashRegister
  attr_reader :discount, :items
  attr_accessor :total



  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount

  end


  def add_item(item, price, quantity = 1)
    @transaction = price * quantity
    @total += @transaction
    quantity.times do
      @items << item
    end
  end

  def void_last_transaction
    @total -= @transaction
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    @total = (((100.0 - @discount) / 100) * @total)
    "After the discount, the total comes to $#{@total.round}."
  end
  end

end

money = CashRegister.new(20)
money.apply_discount
