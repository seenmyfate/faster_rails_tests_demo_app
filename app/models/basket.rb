class Basket < ActiveRecord::Base
  has_many :basket_items
end
