3.times do |u|
  User.create(
                name: Faker::Name.name,
                email: Faker::Internet.email,
                phone_number: Faker::PhoneNumber.cell_phone,
                preferred_forest: ['Santa Cruz', 'Point Arena'].sample,
                forest_steward: Faker::Name.name,
                forest_visit_date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 5)
              )
end


message_template = MessageTemplate.create(body: 'Hello', name: "hello_template")


user_ids = User.pluck(:id)

10_000.times do
  Message.create(
                  body: Faker::Lorem.sentence(word_count: 5, supplemental: true, random_words_to_add: 4),
                  user_id: user_ids.sample,
                  message_template_id: message_template.id,
                  status: ['delivered', 'error'].sample
                )
end