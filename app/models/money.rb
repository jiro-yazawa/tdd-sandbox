class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end
  def self.dollar(amount)
    return Dollar.new(amount, 'USD')
  end

  def self.franc(amount)
    return Franc.new(amount, 'CHF')
  end

  def equals?(money)
    self.amount == money.amount && self.currency == money.currency
  end

  def times(multiplier)
    return Money.new(amount * multiplier, currency)
  end
end
