class Franc < Money
  def times(multiplier)
    return Franc.new(amount * multiplier, currency)
  end

  def currency
    return 'CHF'
  end
end
