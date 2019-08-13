# This will guess the User class
FactoryBot.define do
  factory :message_template do
    name { "hello_template" }
    body  { "hello %name%. " }
  end
end