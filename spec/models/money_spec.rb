require 'rails_helper'

RSpec.describe Money, type: :model do
  it '#equal?' do
    expect(Money.dollar(5).equals?(Money.dollar(5))).to be true
    expect(Money.dollar(5).equals?(Money.dollar(6))).to be false
    expect(Money.franc(5).equals?(Money.dollar(5))).to be false
  end

  it '#times' do
    five = Money.dollar(5)
    expect(Money.dollar(10).equals?(five.times(2))).to be true
    expect(Money.dollar(15).equals?(five.times(3))).to be true
  end

  it '#currency' do
    expect('USD').to eq Money.dollar(1).currency
    expect('CHF').to eq Money.franc(1).currency
  end

  describe '#plus' do
    it 'will succeed' do
      five = Money.dollar(5)
      sum = five.plus(five)
      bank = Bank.new
      reduced = bank.reduce(sum, 'USD')
      expect(Money.dollar(10).equals?(reduced)).to be true
    end

    it 'plus returns sum' do
      five = Money.dollar 5
      sum = five.plus(five)
      expect(five.equals?(sum.augend)).to be_truthy
      expect(five.equals?(sum.addend)).to be_truthy
    end
  end

  describe '#reduce' do
    it 'reduce sum' do
      sum = Sum.new(Money.dollar(3), Money.dollar(4))
      bank = Bank.new
      result = bank.reduce(sum, 'USD')
      expect(Money.dollar(7).equals?(result)).to be_truthy
    end

    it 'reduce money' do
      bank = Bank.new
      result = bank.reduce(Money.dollar(1), 'USD')
      expect(Money.dollar(1).equals?(result))
    end

    it 'reduce money different currency' do
      bank = Bank.new
      bank.add_rate('CHF', 'USD', 2)
      result = bank.reduce(Money.franc(2), 'USD')
      expect(Money.dollar(1).equals?(result)).to be_truthy
    end

    it 'identity rate' do
      expect(Bank.new.rate('USD', 'USD')).to eq 1
    end

    it 'mixed addition' do
      five_bucks = Money.dollar(5)
      ten_francs = Money.franc(10)
      bank = Bank.new
      bank.add_rate('CHF', 'USD', 2)
      result = bank.reduce(five_bucks.plus(ten_francs), 'USD')
      expect(result.equals?(Money.dollar(10))).to be_truthy
    end
  end

  it 'sum plus money' do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate('CHF', 'USD', 2)
    sum = Sum.new(five_bucks, ten_francs).plus(five_bucks)
    result = bank.reduce(sum, 'USD')
    expect(result.equals?(Money.dollar(15))).to be_truthy
  end

  it 'sum times' do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate('CHF', 'USD', 2)
    sum = Sum.new(five_bucks, ten_francs).times(2)
    result = bank.reduce(sum, 'USD')
    expect(result.equals?(Money.dollar(20))).to be_truthy
  end
end
