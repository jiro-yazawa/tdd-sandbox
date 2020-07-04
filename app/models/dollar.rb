class Dollar < Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def times(multiplier)
    return Money.dollar(amount * multiplier)
  end

  def currency
    return 'USD'
  end
end
