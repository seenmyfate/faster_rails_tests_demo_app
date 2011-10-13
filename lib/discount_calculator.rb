class DiscountCalculator
  def total_discount(items)
    items.collect(&:discount).inject(:+)
  end
end
