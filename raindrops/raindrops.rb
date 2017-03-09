class Raindrops

  def self.convert(x)
    output = ""
    output += "Pling" if x%3 == 0
    output += "Plang" if x%5 == 0
    output += "Plong" if x%7 == 0
    output == ""? x.to_s : output
  end
end
