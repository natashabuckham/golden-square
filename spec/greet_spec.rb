require 'greet'

RSpec.describe "greet method" do
  it "returns a string that greets the name passed to it" do
    result = greet("Natasha")
    expect(result).to eq "Hello, Natasha!"
  end
end