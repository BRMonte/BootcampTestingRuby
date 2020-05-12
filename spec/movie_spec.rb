class Actor

  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3) # ruby method to slow execution for 3 seconds. This make testing heavy. SOu DOUBLE is an alternative for testing
    true
  end

  def act
    "i love you baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie # observe that all this class does is to comnunicate with the Actor class

  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

# actor = Actor.new("Brad Pitt") using a real actor onject creates dependency
# movie = Movie.new(actor)
# movie.start_shooting


RSpec.describe Movie do
   #ACTOR is being doubled by STUNTMAN  and the ACTIONS are also being doubled
  let(:stuntman)  { double("Mr. Danger", ready?: true, act: "Any string at all", fall_off_ladder: "Sure do it", light_on_fire: false) }
  subject { described_class.new(stuntman) }

  describe "#start_shooting method" do
    it "expects an actor to do 3 actions" do
      expect(stuntman).to receive(:ready?).exactly(1).times
      expect(stuntman).to receive(:act).twice
      expect(stuntman).to receive(:fall_off_ladder).at_least(1).times # we could also say AT_MOST
      expect(stuntman).to receive(:light_on_fire).once #it is to be called only once

      subject.start_shooting
    end
  end
end

# RECAP ON ALLOW METHOD
RSpec.describe "ALLOW method review" do
  it "can customize return value for methods on doubles" do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)

    expect(calculator.add).to eq(15)
    expect(calculator.add(3)).to eq(15) # whatever we write will equal 15
    expect(calculator.add(-2, 17, -11)).to eq(15)
    expect(calculator.add("helo")).to eq(15) # whatever is passed as an argument will equal 15 cause we set it for it
  end

  it "can sub one or more methods on a real object" do #the goal of this examples is to show that the methods never change or are overwritten
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10) # if you write .to eq(6) it would fail, cause we set it for returning 10 whatever comes

  end

  it "can return multiple values in sequence" do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil) #cause pop takes out the last item
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
    [:b, :c]

  end
end
