# best practice to DRY test code
# MEMORIZATION: it caches results just gotten from a previous process.
#with MEMORIZATION the process only happens once.
# And if you need that result more than once, it will give it right away. It wont make the same calculations again
#MEMORIZATION CACHES RESULTS

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

  let(:language) {Language.new("Portugues", "Latin")} #MEMORIZATION syntax

  it "has a name" do
    expect(language.name).to eq("Portugues")
    language.name = "Frances"
    expect(language.name).to eq("Frances")
  end

  it "belongs to a family" do
    expect(language.family).to eq("Latin")
  end

end


