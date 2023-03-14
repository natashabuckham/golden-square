require 'string_builder'

RSpec.describe StringBuilder do
  it "returns length of blank string as 0" do
    string = StringBuilder.new
    result = string.size
    expect(result).to eq 0
  end

  it "returns empty string when output is called" do
    string = StringBuilder.new
    result = string.output
    expect(result).to eq ""
  end

  it "returns length of blank string as 0" do
    string = StringBuilder.new
    string.add("Hello, World")
    result = string.size
    expect(result).to eq 12
  end

  it "returns empty string when output is called" do
    string = StringBuilder.new
    string.add("Hello, World")
    result = string.output
    expect(result).to eq "Hello, World"
  end

end