# Polimorphism: significa ter várias formas de fazer uma "certa coisa".
# que "certa coisa" é essa? R: chamadas de métodos
# Polimorfismo significa que uma chamada de método pode ser executada de várias formas (ou polimorficamente).
# Quem decide "a forma" é o objeto que recebe a chamada: Se um objeto "a" chama um método do objeto "b", então o objeto "b" decide a forma de implementação
# é o tipo do objeto "b" que importa.
# ex: método grita(). Então a chamada b.grita() será um grito humano se "b" for um humano; será um grito de macaco, se "b" for um macaco.

class HotChocolate
  def drink
    "Delicious"
  end

  def discard
    "Plop!"
  end

  def purchase(number)
    "Awesome, I just purchased #{number} more than chocolate beverages"
  end
end

RSpec.describe HotChocolate do
  it "confirms that an object can respond to a method" do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it "confirms an object can respond to a method with arguments" do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

end
