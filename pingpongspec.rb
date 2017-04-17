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

# describe "Pingpong#countUpTo" do
#   xit "lists positive integers up to the input" do
#     pingpong = Pingpong.new
#     expect(pingpong.countUpTo(4)).to(eq([1,2,3,4]))
#   end
#   xit "returns empty array if given negative number" do
#     pingpong = Pingpong.new
#     expect(pingpong.countUpTo(-4)).to(eq([]))
#   end
# end

describe "Pingpong#transformIntoPingPong" do
  it "replaces every 3rd number with ping" do
    pingpong = Pingpong.new
    expect(pingpong.transformPingPong(4)).to(eq([1,2,"ping",4]))
  end
  it "replaces every 3rd number with ping and every 5th number with pong" do
    pingpong = Pingpong.new
    expect(pingpong.transformPingPong(12)).to(eq([1,2,"ping",4,"pong","ping", 7, 8, "ping", "pong", 11, "ping"]))
  end
  it "replaces every 15th number with pingpong" do
    pingpong = Pingpong.new
    expect(pingpong.transformPingPong(15)).to(eq([1,2,"ping",4,"pong","ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "pingpong"]))
  end
end

describe "Pingpong#doPingPongThing" do
  it "returns error string if given invalid input" do
    pingpong = Pingpong.new
    expect(pingpong.doPingPongThing(-4)).to(eq("It's not a valid number yo."))
  end
  it "returns array of pings pongs and pingpongs correctly transformed" do
    pingpong = Pingpong.new
    expect(pingpong.doPingPongThing(16)).to(eq([1,2,"ping",4,"pong","ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "pingpong",16]))
  end
end
