require 'rails_helper'

RSpec.describe Money, type: :model do
  it '#equal?' do
    expect(Money.dollar(5).equals?(Money.dollar(5))).to be true
    expect(Money.dollar(5).equals?(Money.dollar(6))).to be false
    expect(Money.franc(5).equals?(Money.dollar(5))).to be false
    # Money:Franc
    expect(Money.new(10, 'CHF').equals?(Franc.new(10, 'CHF'))).to be true
  end

  it '#multiple' do
    five = Money.dollar(5)
    expect(Money.dollar(10).equals?(five.times(2))).to be true
    expect(Money.dollar(15).equals?(five.times(3))).to be true
    five = Money.franc(5)
    expect(Money.franc(10).equals?(five.times(2))).to be true
    expect(Money.franc(15).equals?(five.times(3))).to be true
  end

  it '#currency' do
    expect('USD').to eq Money.dollar(1).currency
    expect('CHF').to eq Money.franc(1).currency
  end
end
