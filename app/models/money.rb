class Money < ApplicationRecord
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def self.dollar(amount)
    return Dollar.new(amount)
  end

  def equal?(money)
    self.amount == money.amount && self.class.name == money.class.name
  end

end
