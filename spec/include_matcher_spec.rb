RSpec.describe "include matcher" do
  describe "hot chocolate" do
    it "checks for substring inclusion" do
      expect(subject).to include("hot")
      expect(subject).to include("choc")
      expect(subject).to include("ate")
    end

    it { is_expected.to include("choc") }
  end

  describe [10, 20, 30] do
    it "checks for inclusion in the array, regardless of order" do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(30, 10)
    end

    it { is_expected.to include(30, 10, 20) }
  end

  describe ({a: 2, b: 4}) do
    it "can check for key existence" do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
    end

    it "check fr key-value pair" do
      expect(subject).to include(a: 2)
    end
  end

end
