require 'spec_helper'

describe "shopping_cart_items/show" do
  before(:each) do
    @shopping_cart_item = assign(:shopping_cart_item, stub_model(ShoppingCartItem,
      :user_id => 1,
      :garment_id => 2,
      :quantity => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(//)
  end
end
