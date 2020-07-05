class Bank

  def reduce(sum, to)
    return sum if sum.instance_of? Money
    sum.reduce(to)
  end
end