RSpec.describe "all matcher" do

  it "allows for agregate matchers" do
    expect([5, 7, 9, 13]).to all(be_odd)
    expect([4, 6, 8, 10]).to all(be_even)
    expect([[], [], []]).to all(be_empty)
    expect([0, 0, 0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end

end
