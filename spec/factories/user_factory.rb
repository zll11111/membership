FactoryBot.define do

  sequence :user_name do |n|
    "user#{n}"
  end
  sequence (:id_card,1000000000000000000) do |n|
    n
  end
  factory :user do
    user_name
    email {"#{user_name}@example.com"}
    password "password"
    name {"#{user_name}"}
    birth_date {22.year.ago}
    sex 0
    id_card

  end
end