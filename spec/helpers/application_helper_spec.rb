require File.expand_path(File.join(File.dirname(__FILE__),'../../','app','helpers', 'application_helper'))

class DummyHelper
  extend ApplicationHelper
end

describe ApplicationHelper do

  let(:helper) { DummyHelper }

  context "#cat" do
    it "should join text args" do
      helper.cat("Hello", "there").
        should == "Hello there"
    end
  end
end
