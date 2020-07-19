
class CashRegister

  attr_accessor :discount, :total, :price, :quantity
  attr_reader
  attr_writer

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @quantity = quantity

    self.total += (price * quantity)
    quantity.times { @items << title }
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else    
      self.total -= self.total * (( self.discount / 100.to_f))
      "After the discount, the total comes to $#{self.total.to_i}."
    end  
  end

  def items
    @items
  end

  def void_last_transaction
      self.total -= self.price * self.quantity
  end

end

puts @items
