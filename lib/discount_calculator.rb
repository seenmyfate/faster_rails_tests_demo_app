module DiscountCalculator
  def total_discount
    basket_items.collect(&:discount).inject(:+)
  end
end
