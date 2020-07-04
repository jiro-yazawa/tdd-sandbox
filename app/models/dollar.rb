class Dollar < Money
  def times(multiplier)
    return Dollar.new(amount * multiplier, 'USD')
  end

  def currency
    return 'USD'
  end
end
