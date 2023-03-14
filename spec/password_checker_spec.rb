require 'password_checker'

RSpec.describe PasswordChecker do
  context "password length is 8 or more characters" do
    it "returns true" do
      passwordcheck = PasswordChecker.new
      expect(passwordcheck.check("password")).to eq true
    end
  end

  context "password length is less than 8 characters" do
    it "fails" do
      passwordcheck = PasswordChecker.new
      expect { passwordcheck.check("pass") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
