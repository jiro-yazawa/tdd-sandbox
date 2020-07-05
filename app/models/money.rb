class Money < Expression
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end
  def self.dollar(amount)
    return Money.new(amount, 'USD')
  end

  def self.franc(amount)
    return Money.new(amount, 'CHF')
  end

  def equals?(money)
    self.amount == money.amount && self.currency == money.currency
  end

  def times(multiplier)
    return Money.new(amount * multiplier, currency)
  end

  def plus(addend)
    return Expression.new(amount + addend.amount, currency)
  end
end
