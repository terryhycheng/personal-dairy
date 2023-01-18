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
      expect(@diary.make_snippet("This is a simple test.")).to eq "This is a simple test."
    end
  end

  context ".count_words" do
    it "should return the number of words in the input" do
      expect(@diary.count_words("This is a simple test.")).to eq 5
    end
  end
end