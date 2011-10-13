class Basket < ActiveRecord::Base
  has_many :basket_items

  def total_discount
    basket_items.collect(&:discount).sum
  end
end
