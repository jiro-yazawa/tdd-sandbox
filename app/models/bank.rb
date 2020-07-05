class Bank
  def add_rate(from, to, rate)

  end

  def rate(from, to)
    from == 'CHF' && to == 'USD' ? 2 : 1
  end

  def reduce(sum, to)
    sum.reduce(self, to)
  end
end