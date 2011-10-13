class DiscountCalculator
  def total_discount(items)
    items.collect(&:discount).sum
  end
end
