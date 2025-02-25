require "rails_helper"

RSpec.describe "products", type: :system do
  it "GET /products" do
    products = create_list(:product, 3)
    visit "/products"
    products.each do |product|
      expect(page).to have_content(product.name)
    end
  end

  it "GET /products/:id" do
    product = create(:product)
    visit "/products/#{product.id}"
    expect(page).to have_content(product.name)
  end
end
