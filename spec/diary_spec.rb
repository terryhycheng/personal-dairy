require "diary"

RSpec.describe Diary do
  before(:each) do
    @diary = Diary.new
  end

  context ".make_snippet" do
    it "should return the first five words and then a '...'" do
      expect(@diary.make_snippet("This is a really simple test.")).to eq "This is a really simple..."
    end
  end
end