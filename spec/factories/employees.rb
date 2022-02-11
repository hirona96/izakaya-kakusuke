FactoryBot.define do
  factory :employee do
    employee_num {'a000000000'}
    name {Faker::Name.initials(number: 5)}
    one_thing {Faker::Lorem.sentence}
    email {Faker::Internet.free_email}
    password {Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1)}
    password_confirmation {password}
  end
end