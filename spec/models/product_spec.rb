require 'rails_helper'

describe Product do
  context "when the product has comments" do
    let(:product) { Product.create!(name: "Blue Peanut Butter") }
    let(:user) { User.create!(email: "user4@gmail.com", password: "userfour4")}

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful PB!")
      product.comments.create!(rating: 3, user: user, body: "Ok PB!")
      product.comments.create!(rating: 5, user: user, body: "Great PB!")
    end

    it "returns the average rating of all comments" do
      expect(product.comments.average(:rating).to_f).to eq 3
    end

    it "is not valid without a name" do
      expect(Product.new(description: "Nice bike")).not_to be_valid
    end

  end
end
