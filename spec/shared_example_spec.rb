# shared_examples is a method for DRY code
# when I have several examples with the same rules
# even when the Classes are different

RSpec.shared_examples "a Ruby object with three elements" do
  it "returns the number of items" do #this will be the shared example
    expect(subject.length).to eq(3) # remember that LET is lazyly loaded
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples "a Ruby object with three elements"
end

RSpec.describe String do
  subject { 'abc' }
  include_examples "a Ruby object with three elements"
end

RSpec.describe Hash do
  subject { {a: 1, b: 2, c: 3} }
  include_examples "a Ruby object with three elements"
end

class SaussageLink
  def length
    3
  end
end

RSpec.describe SaussageLink do
  subject { described_class.new}
end
