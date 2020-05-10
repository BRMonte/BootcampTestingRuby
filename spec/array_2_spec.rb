RSpec.describe Array do

  subject(:sally) {[3, 5]}

  it "has two elements" do
    expect(subject.count).to eq(2)
    subject.pop
    expect(sally.length).to eq(1)
  end

  it "creates a new object" do
    expect(sally).to eq([3, 5])
  end

end
