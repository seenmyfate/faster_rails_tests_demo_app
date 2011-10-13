class Basket < ActiveRecord::Base
  has_many :basket_items

  def total_discount
    DiscountCalculator.new.
      total_discount(basket_items)
  end
end
