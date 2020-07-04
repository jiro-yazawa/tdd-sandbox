class Money < ApplicationRecord
  attr_reader :amount

  def equal?(money)
    self.amount == money.amount
  end
end
