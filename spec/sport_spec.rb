# this is an example to show a way to DRY your testinng code
# we will be using a HOOK,
# a HOOK is a piece of code that runs automatically at a specific time during the tests execution: BEFORE DO
# HOOKS are not the best way to DRY code cause it is prone to errors
# but as it is a popular estrategy, it will here be presented so I can recognize it

class Sport

  attr_reader :type, :kind #we need this so the method kind can be read. WIthout it, by just initializing the method won't solve the  "undefined method `kind'" error from RSpec

  def initialize(type,kind)
    @type = type
    @kind = kind
  end
end

  RSpec.describe Sport do

    before do
      @sport = Sport.new("Football", "collective") #THIS IS A HOOK
    end

    it "has a kind" do
      expect(@sport.kind).to eq("collective")
    end

    it "has a type" do
      expect(@sport.type).to eq("Football") #it is a GOOD PRACTICE to test thins separately. NOT using many expects in the same IT
    end

end
