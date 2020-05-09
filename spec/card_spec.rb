class Card

  attr_reader :rank, :suit #we need this so the methodattributes can be read. WIthout it, by just initializing the method won't solve the  "undefined method" error from RSpec

  def initialize(rank,suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do

  it "has a rank" do
    @card = Card.new("Ace", "Spades")
    expect(@card.rank).to eq("Ace") #it is a GOOD PRACTICE to test thins separately. NOT using many expects in the same IT
  end

  it "has a suit" do
    @card = Card.new("Ace", "Spades")
    expect(@card.suit).to eq("Spades")
  end

end

#what DESCRIBE creates is known as an EXAMPLE GROUP'= group of related tests
# IT can be replaced by SPECIFY
#it can teke a string as an argument; the class it self; a method etc
#each IT method creates 1 EXAMPLE. So whatever is inside IT DO END is 1 example
#"has a type" -> this string argument should be a description of what i'm testing. NOT a description of HOW what i'm testing works, bout of WHAT IS
#a method for describing what we are testing
#EQ is a method, means EQUAL
# EXPECT creates an ASSERTION: afirmação
