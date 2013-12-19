# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artwork do
    artist_id 1
    cost 1
    available false
    date_of_sale "2013-12-19"
    type_id 1
    collection_id 1
    name "MyString"
  end
end
