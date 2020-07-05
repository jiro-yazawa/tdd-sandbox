class Pair
  attr_reader :from, :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def equals?(pair)
    from == pair.from && to == pair.to
  end

  # NOTE: Hashのキー探索に使われるのが'eql?': https://docs.ruby-lang.org/ja/latest/method/Object/i/eql=3f.htmlhttps://docs.ruby-lang.org/ja/latest/method/Object/i/eql=3f.html
  def eql?(other)
    equals?(other)
  end

  def hash
    0
  end
end