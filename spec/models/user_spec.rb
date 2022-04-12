require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "should create a new user" do
    user = User.new(first_name: "Taylor", last_name: "Swift", email: "example@gmail.com", password: "password123", password_confirmation: "password123")
    expect(user).to be_valid
    end
    it "should have matching passwords" do
      user = User.new(first_name: "Taylor", last_name: "Swift", email: "example@gmail.com", password: "password", password_confirmation: "password123")
      expect(user).to_not be_valid
    end
  end
end
