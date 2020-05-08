# best practice to DRY test code
# MEMOIZATION: it caches results just gotten from a previous process.
#with MEMOIZATION the process only happens once.
# And if you need that result more than once, it will give it right away. It wont make the same calculations again
#MEMOIZATION CACHES RESULTS

#LET method: avaiable in RSpec like IT, DESCRIBE, EXPECT etc
# it takes an argument (:SYMBOL)
# this symbol will be a variable automatically created by RSpec

class Language

  attr_accessor :name, :family

  def initialize(name, family)
    @name = name
    @family = family
  end

end

RSpec.describe Language do

  let(:language) {Language.new("Portugues", "Latin")}
  # MEMOIZATION syntax. #instantiate Language and assing it to :language for EACH example we have
  # let is a LAZY PROCESS: it only instantiates IF Language.new is needed
  # in  the "before_action" cenario, it will ALWAYS instantiates, even when Language is not needed
  # the object will persist and be cached within the SAME example. Across different examples, RSpec will evaluate the let block again to ensure isolation between tests.

  it "has a name" do
    expect(language.name).to eq("Portugues") #checks the instance created
    language.name = "Frances" # reassigns the SAME instance created before (:language)
    expect(language.name).to eq("Frances")
  end

  it "belongs to a family" do
    language_family = "Latin"
    expect(language.family).to eq(language_family)
  end

end


