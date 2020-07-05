class Bank
  attr_reader :rates

  def initialize
    @rates = {} # {Pair: integer}
  end

  def add_rate(from, to, rate)
    rates[Pair.new(from, to)] = rate
  end

  def rate(from, to)
    rates[Pair.new(from, to)]
  end

  def reduce(sum, to)
    sum.reduce(self, to)
  end
end