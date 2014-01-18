require 'spec_helper'

describe "garments/index" do
  before(:each) do
    assign(:garments, [
      stub_model(Garment,
        :style => "Style",
        :period => "Period",
        :genre => "Genre",
        :material => "Material",
        :available_size => "Available Size",
        :quantity => 1,
        :price => "9.99"
      ),
      stub_model(Garment,
        :style => "Style",
        :period => "Period",
        :genre => "Genre",
        :material => "Material",
        :available_size => "Available Size",
        :quantity => 1,
        :price => "9.99"
      )
    ])
  end

  it "renders a list of garments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Style".to_s, :count => 2
    assert_select "tr>td", :text => "Period".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Material".to_s, :count => 2
    assert_select "tr>td", :text => "Available Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
