require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns blank with an empty array" do
    gratitude = Gratitudes.new
    result = gratitude.format
    expect(result).to eq "Be grateful for: "
  end

  it "returns one gratitude with one input" do
    gratitude = Gratitudes.new
    gratitude.add("sunshine")
    result = gratitude.format
    expect(result).to eq "Be grateful for: sunshine"
  end

  it "returns two gratitudes with two inputs" do
    gratitude = Gratitudes.new
    gratitude.add("sunshine")
    gratitude.add("a working sink")
    result = gratitude.format
    expect(result).to eq "Be grateful for: sunshine, a working sink"
  end
end