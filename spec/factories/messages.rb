# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    user_email "MyString"
    title "MyString"
    topic "MyString"
    content "MyText"
    message_id 1
    admin_id 1
  end
end
