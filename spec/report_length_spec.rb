require 'report_length'

RSpec.describe "report_length method" do
  it "returns string describing length of 'hello, world'" do
    string = "hello, world"
    result = report_length(string)
    expect(result).to eq "This string was #{string.length} characters long."
  end

  it "returns string describing length of 'goodbye, world'" do
    string = "goodbye, world"
    result = report_length(string)
    expect(result).to eq "This string was #{string.length} characters long."
  end
end