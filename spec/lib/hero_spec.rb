require 'spec_helper'
require 'hero'

describe Hero do #describe testa uma classe chamada Hero
  it 'has a sword' do#vai testar se tem uma espada
    hero = Hero.new
    expect(hero.weapon).to eq('sword')
  end
end
