require 'active_support/core_ext/enumerable'
require 'discount_calculator'
describe DiscountCalculator do

  998.times do
    context "#total_discount" do
      let(:items) { [stub(:discount => 10),
        stub(:discount => 20)] }
      it "should return the total discount" do
        calculator = DiscountCalculator.new
        calculator.total_discount(items).should eq 30
      end
    end
  end
end
