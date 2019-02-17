FactoryBot.define do
  factory :user do |f|
    # f.name {Faker::Name.name}
    f.name {"abc"}
    f.email {Faker::Internet.email}
    f.password {"foobar"}
    f.password_confirmation {"foobar"}
  end
end
