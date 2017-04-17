require "rspec"
require "./pingpong.rb"


describe "Pingpong#inputValid?" do
  it "returns false for negative numbers" do
    pingpong = Pingpong.new
    expect(pingpong.inputValid?(-3)).to(eq false )
  end
  it "returns false for non-integer numbers" do
    pingpong = Pingpong.new
    expect(pingpong.inputValid?(3.23)).to(eq false )
  end
  it "returns true for whole numbers" do
    pingpong = Pingpong.new
    expect(pingpong.inputValid?(11)).to(eq true )
  end
  it "returns false when passed nil" do
    pingpong = Pingpong.new
    expect(pingpong.inputValid?(nil)).to(eq false )
  end
  it "returns false when passed a non-integer string" do
    pingpong = Pingpong.new
    expect(pingpong.inputValid?("thebird")).to(eq false )
  end
  it "returns false when passed a string" do
    pingpong = Pingpong.new
    expect(pingpong.inputValid?("12")).to(eq true )
  end
end

describe "Pingpong#countUpTo" do
  it "lists positive integers up to the input" do
    expect(4).to(eq([1,2,3,4]))
  end
end

# describe "Pingpong#countBy3" do
#   xit "replaces every 3rd number with ping" do
#     expect(6).to(eq([1,2,ping,4,5,ping]))
#   end
# end
