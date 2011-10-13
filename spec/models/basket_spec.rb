require 'spec_helper'
describe Basket do
  context "total_discount" do
    let(:basket) { Basket.create! }
    let(:basket_items) { [BasketItem.create!(:discount => 10),
      BasketItem.create!(:discount => 20) ]}

    it "should return the total discount" do
      basket = Basket.create!
      basket.basket_items = basket_items
      basket.total_discount.should == 30
    end
  end
end
