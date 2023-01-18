require "diary"

RSpec.describe Diary do
  before(:each) do
    @diary = Diary.new
  end

  context ".make_snippet" do
    it "should return the first 5 words and then a '...' if the input.length > 5" do
      expect(@diary.make_snippet("This is a really simple test.")).to eq "This is a really simple..."
    end

    it "should return the string itself without modification if the input.length <= 5" do
      expect(@diary.make_snippet("This is a really test.")).to eq "This is a really test."
    end
  end

end