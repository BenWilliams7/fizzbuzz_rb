require "rspec"
require "./pingpong.rb"


describe "Pingpong#inputValid?" do
  it "only accepts positive integers as input" do
    pingpong = Pingpong.new
    expect(pingpong.inputValid?(-3)).to(eq false )
  end
end

describe "Pingpong#countUpTo" do
  xit "lists positive integers up to the input" do
    expect(4).to(eq([1,2,3,4]))
  end
end

describe "Pingpong#countBy3" do
  xit "replaces every 3rd number with ping" do
    expect(6).to(eq([1,2,ping,4,5,ping]))
  end
end
