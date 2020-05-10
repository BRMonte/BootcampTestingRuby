# there are at least 3 EQUALITY MATCHERS METHOD
# eq: check if the values match -> a = 3 eq to b = 3.0
# eql: check if the value + type matches -> a = 3 not eql b = to 3.0
# equal: checks if the identity is the same a = 3 not equal to b = 3
# be is the same as equal

RSpec.describe "equality matches" do

  let(:a) {3.0}
  let(:b) {3}

    describe "eq matcher" do
      it "tests for value and ignores type" do
        expect(a).to eq(3)
        expect(b).to eq(3.0)
        expect(a).to eq(b)
      end
    end

    describe "eql matcher" do
      it "tests for value, including same type" do
        expect(a).not_to eql(3)
        expect(b).not_to eql(3.0)
        expect(a).not_to eql(b)
      end
    end

    describe "equal and be matcher" do
      let(:c) {[1, 2, 3]}
      let(:d) {[1, 2, 3]}
      let(:e) {c}

      it "cares about object indentity" do
        expect(c).to eq(d)
        expect(c).to eql(d)


        expect(c).to equal(e)
        expect(c).to be(e)

        expect(c).not_to equal(d)
        expect(c).not_to equal([1, 2, 3])

      end
    end

end
