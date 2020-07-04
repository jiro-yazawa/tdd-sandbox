require 'rails_helper'

RSpec.describe Money, type: :model do
  it '#equal?' do
    expect(Dollar.new(5).equal?(Dollar.new(5))).to be true
    expect(Dollar.new(5).equal?(Dollar.new(6))).to be false
    expect(Franc.new(5).equal?(Franc.new(5))).to be true
    expect(Franc.new(5).equal?(Franc.new(6))).to be false
    expect(Franc.new(5).equal?(Dollar.new(5))).to be false
  end
end
