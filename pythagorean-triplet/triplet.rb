class Triplet

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a=a
    @b=b
    @c=c
  end

  def new(a,b,c)
    Triplet.new
  end

  def sum
    a+b+c
  end

  def product
    a*b*c
  end

  def pythagorean?
    if a**2 + b**2 == c**2
      true
    end
  end

  def self.where(conditions)
    Triplets.new(conditions).to_a
  end

end

class Triplets

  attr_reader :factors, :product

  def initialize(conditions)
    min = conditions.fetch(:min_factor) { 1 }
    max = conditions.fetch(:max_factor)
    @sum = conditions[:sum]
    @factors = (min..max).to_a
  end

  def to_a
    triplets = []
    each_triplet do |triplet|
      triplets << triplet if select?(triplet)
    end
    triplets
  end

  def each_triplet
    factors.combination(3).each do |a, b, c|
      yield Triplet.new(a, b, c)
    end
  end



end
