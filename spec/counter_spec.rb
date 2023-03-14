require 'counter'

RSpec.describe Counter do
  it "returns 1 when you add 1" do
    count = Counter.new
    count.add(1)
    result = count.report
    expect(result).to eq "Counted to 1 so far."
  end

  it "returns 612 when you add 612" do
    count = Counter.new
    count.add(612)
    result = count.report
    expect(result).to eq "Counted to 612 so far."
  end  

  it "returns 10 when you add 7 and 3" do
    count = Counter.new
    count.add(7)
    count.add(3)
    result = count.report
    expect(result).to eq "Counted to 10 so far."
  end
end