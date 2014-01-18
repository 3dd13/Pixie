require 'spec_helper'

describe "garments/new" do
  before(:each) do
    assign(:garment, stub_model(Garment,
      :style => "MyString",
      :period => "MyString",
      :genre => "MyString",
      :material => "MyString",
      :available_size => "MyString",
      :quantity => 1,
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new garment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", garments_path, "post" do
      assert_select "input#garment_style[name=?]", "garment[style]"
      assert_select "input#garment_period[name=?]", "garment[period]"
      assert_select "input#garment_genre[name=?]", "garment[genre]"
      assert_select "input#garment_material[name=?]", "garment[material]"
      assert_select "input#garment_available_size[name=?]", "garment[available_size]"
      assert_select "input#garment_quantity[name=?]", "garment[quantity]"
      assert_select "input#garment_price[name=?]", "garment[price]"
    end
  end
end
