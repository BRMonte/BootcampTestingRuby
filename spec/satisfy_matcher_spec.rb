# allow us to create our own assertion

RSpec.describe "satisfy matcher" do
  subject { "racecar" }

  it "is a palindrome" do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

end
