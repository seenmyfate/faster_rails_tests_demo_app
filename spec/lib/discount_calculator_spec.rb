require 'discount_calculator'

class FakeBasket
  include DiscountCalculator
end

describe DiscountCalculator do

  context "#total_discount" do
    it "should return the total discount" do
      basket = FakeBasket.new
      basket_items = [stub(:discount => 10),
        stub(:discount => 20)]
      basket.stub(:basket_items) { basket_items }
      basket.total_discount.should eq 30
    end
  end
end
