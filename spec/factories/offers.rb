FactoryBot.define do
  factory :offer do
    name { "MyString" }
    idea { "MyText" }
    purpose { "MyText" }
    description { "MyText" }
    blogger { nil }
    price { "9.99" }
  end
end
