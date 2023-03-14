require 'present'

RSpec.describe Present do
  context "when present has content" do
    it "fails" do
      present = Present.new
      present.wrap("content")
      expect { present.wrap("more content") }.to raise_error "A contents has already been wrapped."
    end

    it "returns contents when present is unwrapped" do
      present = Present.new
      content = "content"
      present.wrap(content)
      expect(present.unwrap).to eq content
    end
  end

  context "when present is empty" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end
