class Franc < Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def times(multiplier)
    return Franc.new(amount * multiplier, nil)
  end

  def currency
    return 'CHF'
  end
end
