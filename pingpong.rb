class Pingpong
  def inputValid?(number)
    !!number.to_s.match(/\A\d+(\0.0+)?\z/)
  end
end
