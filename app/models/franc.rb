class Franc < Money
  def times(multiplier)
    return Franc.new(amount * multiplier, 'CHF')
  end

  def currency
    return 'CHF'
  end
end
