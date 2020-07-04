class Dollar < Money
  def times(multiplier)
    return Money.dollar(amount * multiplier)
  end

  def currency
    return 'USD'
  end
end
