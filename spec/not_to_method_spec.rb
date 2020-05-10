# it checks for the inverse of a given parameter

RSpec.describe "not_to method" do

    it "checks that two values do not match" do
      expect("Hello").not_to eq("hello")
      expect(5).not_to eq(10)
      expect([1, 2]).not_to eq(["1", "2"])
    end


end
