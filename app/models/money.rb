class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def self.dollar(amount)
    return Dollar.new(amount, nil)
  end

  def self.franc(amount)
    return Franc.new(amount, nil)
  end

  def currency
    raise NotImplementedError 'You must implement "currency" method'
  end

  def equal?(money)
    self.amount == money.amount && self.class.name == money.class.name
  end

  def times(multiplier)
  end
end
