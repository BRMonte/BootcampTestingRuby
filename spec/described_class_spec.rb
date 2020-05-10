# here we introduce the DESCRIBED_CLASS method
# it gives a generic method suitable for any class
# so instead of hard coding the name of the class

class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Boris') } #stead of putting King.new
  let(:louis) { described_class.new("Louis") } #stead of putting King.new

  it "represents a great person" do
    expect(subject.name).to eq("Boris")
    expect(louis.name).to eq("Louis")
  end


end
