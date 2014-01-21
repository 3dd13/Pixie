# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shopping_cart_item do
    user_id 1
    garment_id 1
    quantity 1
  end
end
