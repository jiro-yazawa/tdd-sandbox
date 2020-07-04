class Money < ApplicationRecord
  attr_reader :amount

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def self.dollar(amount)
    return Dollar.new(amount)
  end

  def self.franc(amount)
    return Franc.new(amount)
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
