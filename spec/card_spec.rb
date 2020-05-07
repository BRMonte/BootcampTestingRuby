class Card

  attr_reader :type #we need this so the method TYPE can be read. WIthout it, by just initializing the method won't solve the  "undefined method `type'" error from RSpec

  def initialize(type)
    @type = type
  end
end

RSpec.describe 'Card' do

  it "has a type" do
    card = Card.new("Ace of Spades")
    expect(card.type).to eq("Ace of Spades")
  end
end

#what DESCRIBE creates is known as an EXAMPLE GROUP'= group of related testes
# IT can be replaced by SPECIFY
#this string argument should be a description of what i'm testing. not a description of HOW, bout of WHAT IS
#a method for describing what we are testing #it can teke a string as an argument; the class it self; a method etc
#ep it is a method, means EQUAL
#each IT method creates 1 EXAMPLE
