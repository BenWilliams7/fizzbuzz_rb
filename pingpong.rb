class Pingpong
  def inputValid?(number)
    !!number.to_s.match(/\A\d+(\0.0+)?\z/)
  end
  def transformPingPong (number)
    (1..number).map do |num|
      if num % 15 == 0
        "pingpong"
      elsif num % 3 == 0
        "ping"
      elsif num % 5 == 0
        "pong"
      else
        num
      end
    end
  end
  def doPingPongThing(number)
    if inputValid?(number)
      transformPingPong(number)
    else
      "It's not a valid number yo."
    end
  end
end

# def countUpTo(number)
#   countArray = []
#   number.downto(1) {|n| countArray.unshift(n)}
#   countArray
# end
# def transformIntoPingPong(number)
#   countList = countUpTo(number)
#   countList.map do |n|
#     if n % 15 == 0
#       "pingpong"
#     elsif n % 3 == 0
#       "ping"
#     elsif n % 5 == 0
#       "pong"
#     else
#       n
#     end
#   end
# end
