Rspec.describe 'Card' do #a method for describing what we are testing #it can teke a string as an argument; the class it self; a method etc

  it "has a type" do#this string argument should be a description of what i'm testing. not a description of HOW, bout of WHAT IS
    card = Card.new("Ace of Spades")
    expect(card.type).to eq("Ace of Spades") #ep it is a method, means EQUAL
  end
end

#what DESCRIBE creates is known as an EXAMPLE GROUP'= group of related testes
# IT can be replaced by SPECIFY
