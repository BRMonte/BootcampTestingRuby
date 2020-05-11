# pedicate methods in RUBY return BOOLEAN values
# usually can be identified by "?"
# ex: odd? include? empty? zero? even?
# the PREDICATE MATCHER will work like this: .even? => be_even

RSpec.describe "predicate methods and predicate matchers" do

  it "can be tested with Ruby methods" do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  it "can be tested with predicate matchers" do
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end


end
