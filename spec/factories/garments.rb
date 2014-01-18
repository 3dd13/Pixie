# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :garment do
    style "MyString"
    period "MyString"
    genre "MyString"
    material "MyString"
    available_size "MyString"
    quantity 1
    price "9.99"
    description "MyText"
  
    admin
  end
end
