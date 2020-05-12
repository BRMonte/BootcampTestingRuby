# double = stunt man

RSpec.describe "a random double" do
  it "only allows defined methods to be invoked" do
    # stuntman = double("Mr. Danger", fall_of_ladder: "Ouch", light_on_fire: true)
    # expect(stuntman.fall_of_ladder).to eq("Ouch")
    # expect(stuntman.light_on_fire).to eq(true)

    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_of_ladder).and_return("Ouch")
    # expect(stuntman.fall_of_ladder).to eq("Ouch")

    stuntman = double("Mr. Danger") #double method
    allow(stuntman).to receive_messages(fall_of_ladder: "Ouch", light_on_fire: true) # allow give Mr Danger the methods fall_of_ladder and light_on_fire
    expect(stuntman.fall_of_ladder).to eq("Ouch")
    expect(stuntman.light_on_fire).to eq(true)
  end
end
