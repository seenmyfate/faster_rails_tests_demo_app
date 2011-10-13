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

  context "#default_image_tag" do

    it "should call image tag with a default path" do
      helper.should_receive(:image_tag).
        with('default.jpg')
      helper.default_image_tag
    end
  end
end
