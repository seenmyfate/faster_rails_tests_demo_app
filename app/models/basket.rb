class Basket < ActiveRecord::Base
  has_many :basket_items
  include DiscountCalculator
end
