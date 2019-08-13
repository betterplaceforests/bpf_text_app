# This will guess the User class
FactoryBot.define do
  factory :user do
    name { "User" }
    email  { "user@user.com" }
  end
end