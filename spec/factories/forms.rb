FactoryBot.define do
  factory :form do
    last_name_kana {'アイタ'}
    first_name_kana {'ショウ'}
    phone_number {'09012345678'}
    number_of_people {'2'}
    seat {'counter'}
    datetime {Faker::Time.between(from: DateTime.now, to: DateTime.now, format: :short)}
  end
end