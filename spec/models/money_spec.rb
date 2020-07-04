require 'rails_helper'

RSpec.describe Money, type: :model do
  it '#equal?' do
    expect(Money.dollar(5).equal?(Money.dollar(5))).to be true
    expect(Money.dollar(5).equal?(Money.dollar(6))).to be false
    expect(Money.franc(5).equal?(Franc.new(5))).to be true
    expect(Money.franc(5).equal?(Franc.new(6))).to be false
    expect(Money.franc(5).equal?(Money.dollar(5))).to be false
  end

  it '#multiple' do
    five = Money.dollar(5)
    expect(Money.dollar(10).equal?(five.times(2))).to be true
    expect(Money.dollar(15).equal?(five.times(3))).to be true
    five = Money.franc(5)
    expect(Money.franc(10).equal?(five.times(2))).to be true
    expect(Money.franc(15).equal?(five.times(3))).to be true
  end
end
