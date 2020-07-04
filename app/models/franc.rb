class Franc < Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def times(multiplier)
    return Money.franc(amount * multiplier)
  end

  def currency
    return 'CHF'
  end
end
