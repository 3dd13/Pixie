require 'spec_helper'

describe "garments/show" do
  before(:each) do
    @garment = assign(:garment, stub_model(Garment,
      :style => "Style",
      :period => "Period",
      :genre => "Genre",
      :material => "Material",
      :available_size => "Available Size",
      :quantity => 1,
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Style/)
    rendered.should match(/Period/)
    rendered.should match(/Genre/)
    rendered.should match(/Material/)
    rendered.should match(/Available Size/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
  end
end
