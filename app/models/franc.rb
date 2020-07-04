class Franc < Money
  def times(multiplier)
    return Money.franc(amount * multiplier)
  end

  def currency
    return 'CHF'
  end
end
