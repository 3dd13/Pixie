require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :user_email => "MyString",
      :title => "MyString",
      :topic => "MyString",
      :content => "MyText",
      :message_id => 1,
      :admin_id => 1
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", messages_path, "post" do
      assert_select "input#message_user_email[name=?]", "message[user_email]"
      assert_select "input#message_title[name=?]", "message[title]"
      assert_select "input#message_topic[name=?]", "message[topic]"
      assert_select "textarea#message_content[name=?]", "message[content]"
      assert_select "input#message_message_id[name=?]", "message[message_id]"
      assert_select "input#message_admin_id[name=?]", "message[admin_id]"
    end
  end
end
