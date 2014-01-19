require 'spec_helper'

describe "messages/show" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :user_email => "User Email",
      :title => "Title",
      :topic => "Topic",
      :content => "MyText",
      :message_id => 1,
      :admin_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User Email/)
    rendered.should match(/Title/)
    rendered.should match(/Topic/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
