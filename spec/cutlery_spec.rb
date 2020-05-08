#example to DRY test code using a METHOD

class Cutlery

  attr_reader :type, :material #we need this so the method TYPE can be read. WIthout it, by just initializing the method won't solve the  "undefined method `type'" error from RSpec

  def initialize(type,material)
    @type = type
    @material = material
  end
end

RSpec.describe Cutlery do

  def cutlery #method for DRY code
    Cutlery.new("Fork", "Silver")
  end


  it "has a type" do
    expect(cutlery.type).to eq("Fork") #it is a GOOD PRACTICE to test thins separately. NOT using many expects in the same IT
  end

  it "has a material" do
    expect(cutlery.material).to eq("Silver")
  end

end
