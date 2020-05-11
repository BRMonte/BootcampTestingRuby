# in Ruby falsy values are: false and nil
# in Ruby truthy values are: everything else


RSpec.describe "be matchers" do

  it "can test for truthyness" do
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect(3.14).to be_truthy
    expect([]).to be_truthy
    expect([1, 2]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy

  end

  it "can teste for falsyness" do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it "can test for nil" do
    expect(nil).to be_nil

    my_hash = {a: 5}
    expect(my_hash[:b]).to be_nil

  end

end
