RSpec.describe Hash do

  subject(:bob) do
    {a: 2, b: 10}
  end

  it "has two key-value pairs" do
    expect(subject.length).to eq(2) #just writing subject will work as well
    expect(bob.length).to eq(2)
  end

  describe "nested example" do #it works the same way for nested examples
   it "has two key-value pairs" do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
   end
  end

end
