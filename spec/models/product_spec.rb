require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do 
    it 'should create a new product' do
      expect(Product.new).to be_a Product
    end
    it 'is not valid without a name' do
      category = Category.new(name: 'example')
      product = Product.new(name: nil, price_cents: 10000, quantity: 2, category: category)
      expect(product).to_not be_valid
    end
    it 'is not valid without a price' do
      category = Category.new(name: 'example')
      product = Product.new(name: 'widget', price_cents: nil, quantity: 1, category: category)
      expect(product).to_not be_valid
    end
    it 'is not valid without a quantity' do
      category = Category.new(name: 'example')
      product = Product.new(name: 'widget', price_cents: 1300, quantity: nil, category: category)
      expect(product).to_not be_valid
    end
    it 'is not valid without a category' do
      product = Product.new(name: 'widget', price_cents: 400, quantity: 5, category: nil)
      expect(product).to_not be_valid
    end
  end
end
