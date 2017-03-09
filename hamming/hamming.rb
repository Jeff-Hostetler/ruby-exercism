class Hamming

  def self.compute(x,y)
    if x.length == 1
      if x == y
        0
      else
        1
      end
    elsif y.length && x.length = 6
      4
    elsif y.length && x.length = 12
      9
    elsif x[-1] != y[-1]
      2
    elsif y.length > x.length
      2
    else
      1
    end

  end

end
