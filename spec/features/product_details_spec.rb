require 'rails_helper'

RSpec.feature "Visitor navigates to product detail", type: :feature, js: true do
  #SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

  
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
  end

  scenario "click on product" do
    visit root_path
    save_screenshot
    click_on 'Details'
    save_screenshot
    

    expect(page).to have_css '.product-detail'
  end
end