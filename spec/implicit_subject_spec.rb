RSpec.describe Hash do

  #SUBJECT is a method that implicitly instantiates the class i'm describing by RSpec.describe

  it "should start off empty" do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some value" # here it reassigns the Hash created in line 8 with the SUBJECT method. It does not create a new one
    expect(subject.length).to eq(1)
  end

  it "is isolated between examples" do #here the Hash turn back into an empty one
    expect(subject.length).to eq(0)
  end
end

# What does the subject helper method return?
# R: An instance of the class under test.

# Why is better to pass a class argument to the describe method instead of a string with the class name?
# R: With a class argument, RSpec is able to instantiate an instance of the class and make it lazily available via the subject method.
