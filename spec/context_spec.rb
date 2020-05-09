RSpec.describe "#even? method" do

  #it should return true IF number is even
  #it should return false IF number is odd

  context "with even number" do
    it "should return true" do
      expect(4.even?).to eq(true)
    end
  end

  context "with odd number" do
    it "should return false" do
      expect(5.even?).to eq(false)
    end
  end

end

# the CONTEXT method has the same effect as the DESCRIBE
# so where it says CONTEXT if we had DESCRIBE the test would run the same way
# what is new here is: thw IT method should describe SITUATIONS NTHAT ARE CERTAIN
# whenever i hav a IF or any other CONDITIONAL/UNSURE situation, it should be placed in a HIGHR LEVEL
# so a good option is to NEST the CONTEXT method wihtin the RSpec.describe
# in order to not write more complex code into the IT method
