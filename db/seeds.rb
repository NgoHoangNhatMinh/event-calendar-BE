# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# This file ensures the existence of records required to run the application in every environment.

User.destroy_all
10.times do |i|
  User.create!(
    username: Faker::Lorem.sentence(word_count: 1),
    id: i + 1
  )
end

categories = ["Hall Event", "Academic", "CCA", "Other", "Baskteball", "Floorball", "Block Committee", "Green Team"]

Event.destroy_all
60.times do |i|
  Event.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    author: Faker::Lorem.sentence(word_count: 1),
    description: Faker::Lorem.paragraph(sentence_count: 15),
    time: rand(2.years).seconds.ago,
    user_id: i % 10 + 1,
    category: categories[i % categories.length],
    created_at: rand(1.months).seconds.ago # Randomly create a date
  )
end

