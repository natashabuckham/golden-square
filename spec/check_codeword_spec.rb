require 'check_codeword'

RSpec.describe 'check_codeword method' do
  it "checks codeword equals horse" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "checks codeword begins with h and ends with e and isn't horse" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end

  it "checks codeword doesn't begin with h and end with e" do
    result = check_codeword("word")
    expect(result).to eq "WRONG!"
  end

end
