RSpec.describe Array do

  it "should start off empty" do
    expect(subject.count).to eq(0)
    subject << "one element"
    expect(subject.count).to eq(1)
  end


end
