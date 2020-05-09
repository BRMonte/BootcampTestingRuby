RSpec.describe 'before_after' do

  before(:context) do #this is a HOOK
    puts "This is run only once before the whole context"
  end

  after(:context) do #this is a HOOK
    puts "This will run only once after all processes"
  end

  before(:example) do #this is a HOOK
    puts "This will run before each example"
  end

  after(:example) do #this is a HOOK
    puts "This will ren after each example"
  end

  it "is just a random example" do #this is an example
    expect(5 * 2).to eq(10)
  end

  it "is just another random example" do #this is an example
    expect(2 + 5).to eq(7)
  end

end

# this will be the RUNNING ORDER:
# 1º - BEFORE_CONTEXT
# 2º - BEFORE_EXAMPLE n1
# 3º - example nº1
# 4º - AFTER_EXAMPLE n1
# 5º - BEFORE_EXAMPLE n2
# 6º - example n2
# 7º - AFTER_EXAMPLE n2
# 8º - AFTER_CONTEXT
